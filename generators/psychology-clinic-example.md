# Ejemplo Completo: Gabinete de Psicología

## 🏥 Caso de Uso Real con Prompts Específicos

### **Prompt 1: Entidad Paciente**
```
Usando el framework X21A de EJIE, genera una entidad JPA para PACIENTES con estas especificaciones:

CONTEXTO: Gabinete de Psicología
ENTIDAD: Paciente  
TABLA: PACIENTES

CAMPOS REQUERIDOS:
- nombre: String, obligatorio, máximo 100 caracteres
- apellidos: String, obligatorio, máximo 100 caracteres  
- dni: String, obligatorio, formato DNI español, único
- fechaNacimiento: Date, obligatorio, no puede ser futura
- telefono: String, obligatorio, formato español
- email: String, formato email válido, único, máximo 100 caracteres
- direccion: String, máximo 200 caracteres
- ciudad: String, máximo 100 caracteres
- codigoPostal: String, formato código postal español
- motivoConsulta: String, obligatorio, máximo 500 caracteres
- observacionesMedicas: String, máximo 1000 caracteres
- contactoEmergenciaNombre: String, máximo 100 caracteres
- contactoEmergenciaTelefono: String, formato español

VALIDACIONES:
- DNI: regex "^[0-9]{8}[TRWAGMYFPDXBNJZSQVHLCKE]$"
- Email: @Email annotation
- Teléfono: regex "^[6-9][0-9]{8}$"
- Código postal: regex "^[0-9]{5}$"

REQUISITOS TÉCNICOS:
- Extiende BaseEntity del framework X21A
- Usa secuencia SEQ_PACIENTES  
- Anotaciones Jackson para JSON con formato dd/MM/yyyy para fechas
- Validaciones Bean Validation completas
- Constructor vacío y constructor con parámetros principales
- Métodos equals, hashCode, toString
- Método getEdad() calculado
- Método getNombreCompleto() concatenado

Genera el código Java completo siguiendo los patrones X21A.
```

### **Prompt 2: Entidad Cita**
```
Usando el framework X21A de EJIE, genera una entidad JPA para CITAS con estas especificaciones:

CONTEXTO: Gabinete de Psicología
ENTIDAD: Cita
TABLA: CITAS

CAMPOS REQUERIDOS:
- paciente: Paciente, relación ManyToOne, obligatorio
- fechaCita: Date, obligatorio, no puede ser en el pasado
- duracion: Integer, valores permitidos: 30, 45, 60, 90 minutos
- tipoSesion: Enum (PRIMERA_CONSULTA, SEGUIMIENTO, TERAPIA_GRUPAL, EVALUACION)
- estado: Enum (PROGRAMADA, CONFIRMADA, REALIZADA, CANCELADA, NO_ASISTIO)
- precio: BigDecimal, obligatorio, mayor que 0, máximo 200
- notas: String, máximo 1000 caracteres
- pagado: Boolean, default false
- metodoPago: String (EFECTIVO, TARJETA, TRANSFERENCIA, BIZUM)
- fechaPago: Date, opcional

VALIDACIONES:
- Fecha cita: @Future para nuevas citas
- Duración: @Min(30) @Max(90)
- Precio: @DecimalMin("0.01") @DecimalMax("200.00")
- Tipo sesión: @NotNull
- Estado: @NotNull

RELACIONES:
- @ManyToOne con Paciente
- @JoinColumn(name = "PACIENTE_ID")

REQUISITOS TÉCNICOS:
- Extiende BaseEntity del framework X21A
- Usa secuencia SEQ_CITAS
- Enums TipoSesion y EstadoCita como clases separadas
- Formato fecha: dd/MM/yyyy HH:mm:ss con Jackson
- Validaciones Bean Validation completas
- Constructor vacío y con parámetros
- Métodos de negocio: isPagada(), isRealizada(), canBeCancelled()

Genera el código Java completo con los enums incluidos siguiendo los patrones X21A.
```

### **Prompt 3: Repository Paciente**
```
Usando el framework X21A de EJIE, genera un Repository JPA para la entidad Paciente con estas especificaciones:

FUNCIONALIDADES REQUERIDAS:
- CRUD básico heredado de JpaRepository<Paciente, Long>
- findByNombreContainingIgnoreCaseOrApellidosContainingIgnoreCase: búsqueda por nombre o apellidos
- findByDni: búsqueda exacta por DNI
- findByEmail: búsqueda exacta por email  
- findByStatus: filtrar por estado (ACTIVE/INACTIVE)
- findByCreatedDateBetween: pacientes dados de alta en rango de fechas
- findPacientesWithCitasPendientes: pacientes con citas futuras
- countByStatus: contar pacientes por estado

CONSULTAS PERSONALIZADAS JPQL:
- Pacientes con más de X citas: 
  @Query("SELECT p FROM Paciente p WHERE SIZE(p.citas) > :numCitas")
- Pacientes sin citas en últimos X días:
  @Query("SELECT p FROM Paciente p WHERE p.id NOT IN (SELECT DISTINCT c.paciente.id FROM Cita c WHERE c.fechaCita >= :fecha)")
- Búsqueda combinada por texto:
  @Query("SELECT p FROM Paciente p WHERE LOWER(p.nombre) LIKE LOWER(CONCAT('%', :texto, '%')) OR LOWER(p.apellidos) LIKE LOWER(CONCAT('%', :texto, '%')) OR p.dni LIKE CONCAT('%', :texto, '%')")

PAGINACIÓN:
- Todas las búsquedas deben soportar Pageable
- Ordenación por defecto: apellidos, nombre ASC

REQUISITOS TÉCNICOS:
- Interface que extiende JpaRepository<Paciente, Long>
- Anotación @Repository
- Parámetros con @Param para consultas JPQL
- Métodos con Page<Paciente> para paginación
- Métodos con List<Paciente> para listas simples

Genera el código Java completo siguiendo los patrones X21A.
```

### **Prompt 4: Service Paciente**
```
Usando el framework X21A de EJIE, genera un Service para la entidad Paciente con estas especificaciones:

FUNCIONALIDADES REQUERIDAS:
- findAll(Pageable): listado paginado
- findById(Long): buscar por ID con Optional
- save(Paciente): crear/actualizar con validaciones
- deleteById(Long): eliminar con validaciones de negocio
- findByNameContaining(String, Pageable): búsqueda paginada
- activatePaciente(Long): activar paciente
- deactivatePaciente(Long): desactivar si no tiene citas futuras
- getEstadisticas(): estadísticas generales
- validateUniqueDni(String, Long): validar DNI único
- validateUniqueEmail(String, Long): validar email único

REGLAS DE NEGOCIO:
- No permitir DNI duplicados (excepto en actualización del mismo paciente)
- No permitir email duplicados (excepto en actualización del mismo paciente)
- Validar formato DNI español con algoritmo de verificación
- Al desactivar, verificar que no tenga citas futuras (estado PROGRAMADA o CONFIRMADA)
- Calcular edad automáticamente
- Logging de operaciones importantes (crear, actualizar, eliminar)
- Auditoría: establecer createdBy y updatedBy

MANEJO DE ERRORES:
- PacienteNotFoundException para ID no encontrado
- DniAlreadyExistsException para DNI duplicado
- EmailAlreadyExistsException para email duplicado
- PacienteHasCitasException al intentar eliminar con citas futuras
- ValidationException para errores de validación

ESTADÍSTICAS:
- Total pacientes activos
- Nuevos pacientes este mes
- Pacientes con citas pendientes
- Promedio edad pacientes

REQUISITOS TÉCNICOS:
- Anotación @Service
- @Transactional en métodos que modifican datos
- @Transactional(readOnly = true) en consultas
- Inyección de PacienteRepository con @Autowired
- Logger SLF4J para auditoría
- Validaciones con @Valid en parámetros

Genera el código Java completo con excepciones personalizadas siguiendo los patrones X21A.
```

### **Prompt 5: Controller Paciente**
```
Usando el framework X21A de EJIE, genera un Controller completo para la entidad Paciente con estas especificaciones:

ENDPOINTS REQUERIDOS:
- GET /pacientes/list: vista principal Thymeleaf con listado paginado
- GET /pacientes/{id}: obtener paciente por ID (ResponseEntity<Paciente>)
- POST /pacientes/add: crear nuevo paciente (ResponseEntity<Paciente>)
- PUT /pacientes/update/{id}: actualizar paciente (ResponseEntity<Paciente>)
- DELETE /pacientes/delete/{id}: eliminar paciente (ResponseEntity<Map<String, String>>)
- GET /pacientes/search: búsqueda con paginación (ResponseEntity<Map<String, Object>>)
- GET /pacientes/page: paginación (ResponseEntity<Map<String, Object>>)
- GET /pacientes/stats: estadísticas (ResponseEntity<Map<String, Object>>)
- POST /pacientes/activate/{id}: activar paciente
- POST /pacientes/deactivate/{id}: desactivar paciente

VISTA THYMELEAF (/pacientes/list):
- Model con atributos: pacientes (Page), currentPage, totalPages, totalElements, size
- Estadísticas: totalCount, activeCount, newThisMonth, withPendingCitas
- Título: "Gestión de Pacientes - Gabinete de Psicología"

FUNCIONALIDADES API:
- Paginación completa con metadatos
- Búsqueda por nombre, apellidos, DNI, email
- Filtros por estado (ACTIVE/INACTIVE)
- Manejo de errores con ResponseEntity apropiado
- Validaciones con @Valid
- Logging de operaciones importantes

MANEJO DE ERRORES:
- 404 para paciente no encontrado
- 400 para errores de validación
- 409 para conflictos (DNI/email duplicado)
- 422 para reglas de negocio (paciente con citas)
- Respuestas JSON consistentes con mensaje de error

SEGURIDAD Y VALIDACIÓN:
- @Valid en RequestBody
- Validación de IDs positivos
- Sanitización de parámetros de búsqueda
- Logging de accesos y modificaciones

REQUISITOS TÉCNICOS:
- Anotación @Controller
- @RequestMapping("/pacientes")
- Inyección de PacienteService con @Autowired
- ResponseEntity para APIs JSON
- Model para vista Thymeleaf
- @ExceptionHandler para manejo de errores
- URLs con contexto /psicologia-app

Genera el código Java completo con manejo de errores robusto siguiendo los patrones X21A.
```

### **Prompt 6: Vista Thymeleaf Pacientes**
```
Usando el framework X21A de EJIE, genera una vista Thymeleaf completa para gestión de PACIENTES con estas especificaciones:

CONTEXTO: Gabinete de Psicología (/psicologia-app)
ARCHIVO: pacientes/list.html
TÍTULO: Gestión de Pacientes

ESTRUCTURA HTML:
1. DOCTYPE html5 con namespace Thymeleaf
2. Head con meta viewport, título dinámico, Bootstrap 5.3.0, Font Awesome 6.0.0
3. CSS personalizado para tema sanitario
4. Body con container-fluid

COMPONENTES REQUERIDOS:
1. HEADER:
   - Título con icono fas fa-user-injured
   - Botón "Nuevo Paciente" (btn-primary) que abre modal
   - Breadcrumb: Inicio > Pacientes

2. CARDS ESTADÍSTICAS (row con 4 col-md-3):
   - Total Activos: icono fas fa-users, color azul
   - Nuevos Este Mes: icono fas fa-user-plus, color verde  
   - Con Citas Pendientes: icono fas fa-calendar-check, color naranja
   - Inactivos: icono fas fa-user-times, color rojo

3. FILTROS (card mb-4):
   - Input búsqueda con icono fas fa-search
   - Select estado: Todos/Activos/Inactivos
   - Botón "Limpiar" con icono fas fa-times

4. TABLA RESPONSIVE:
   - Thead table-dark con checkbox "Seleccionar todo"
   - Columnas: ☑, ID, Nombre Completo, DNI, Teléfono, Email, Estado, Fecha Alta, Acciones
   - Tbody con th:each para pacientes
   - Estados con badges: bg-success (Activo), bg-danger (Inactivo)
   - Botones acción: Editar (btn-primary), Historial (btn-info), Eliminar (btn-danger)

5. PAGINACIÓN:
   - nav con ul.pagination justify-content-center
   - Botones Anterior/Siguiente
   - Números de página dinámicos
   - Información "Mostrando X de Y registros"

6. MODAL CREAR/EDITAR:
   - Modal-lg con formulario completo
   - Tabs: Datos Personales, Contacto, Información Clínica
   - Validaciones HTML5 (required, pattern, email)
   - Botones Cancelar/Guardar

CAMPOS FORMULARIO:
- Datos Personales: Nombre, Apellidos, DNI, Fecha Nacimiento
- Contacto: Teléfono, Email, Dirección, Ciudad, Código Postal  
- Clínica: Motivo Consulta, Observaciones Médicas
- Emergencia: Nombre Contacto, Teléfono Contacto

TEMA SANITARIO:
- Colores: azul sanitario (#0066cc), verde (#28a745), rojo (#dc3545)
- Iconos médicos de Font Awesome
- Cards con sombras suaves
- Animaciones de hover
- Responsive design completo

REQUISITOS TÉCNICOS:
- Thymeleaf expressions: th:text, th:each, th:if, th:href
- Atributos del modelo: pacientes, estadísticas, paginación
- JavaScript externo: /psicologia-app/js/pacientes.js
- CSS externo: /psicologia-app/css/pacientes.css
- Bootstrap 5 clases: container-fluid, row, col, card, table, modal, btn, badge

Genera el código HTML completo con Thymeleaf siguiendo los patrones X21A y diseño profesional sanitario.
```

### **Prompt 7: JavaScript Pacientes**
```
Usando el framework X21A de EJIE, genera el JavaScript completo para gestión de PACIENTES con estas especificaciones:

ARCHIVO: /psicologia-app/js/pacientes.js
CONTEXTO: Gabinete de Psicología

VARIABLES GLOBALES:
- currentEditId: null (ID del paciente en edición)
- currentPage: 0 (página actual)
- pageSize: 10 (registros por página)
- totalPages: 1 (total de páginas)
- isSearching: false (estado de búsqueda)
- currentSearchTerm: '' (término de búsqueda actual)
- currentFilter: '' (filtro de estado actual)

FUNCIONES PRINCIPALES:
1. loadPage(page): cargar página con paginación
2. searchPacientes(page = 0): búsqueda con filtros
3. savePaciente(): crear/actualizar paciente con validaciones
4. editPaciente(id): cargar datos para editar en modal
5. deletePaciente(id): eliminar con confirmación SweetAlert2
6. activatePaciente(id): activar paciente
7. deactivatePaciente(id): desactivar paciente
8. updatePagination(): actualizar controles de paginación
9. updateTableBody(pacientes): actualizar filas de tabla
10. updateStats(stats): actualizar cards de estadísticas
11. clearSearch(): limpiar filtros y búsqueda
12. validateForm(): validaciones client-side

VALIDACIONES CLIENT-SIDE:
- validateDNI(dni): algoritmo completo DNI español
- validateEmail(email): formato email válido
- validatePhone(phone): formato teléfono español
- validatePostalCode(code): código postal español
- validateAge(birthDate): edad mínima/máxima
- validateRequired(fields): campos obligatorios

CARACTERÍSTICAS AJAX:
- URLs con contexto /psicologia-app/pacientes/
- Headers: 'Content-Type': 'application/json'
- Manejo de errores con try-catch
- Loading states con spinners
- Timeout de 10 segundos
- Retry automático en fallos de red

FEEDBACK VISUAL:
- SweetAlert2 para confirmaciones y alertas
- Loading spinners en botones
- Deshabilitación de controles durante operaciones
- Mensajes de éxito/error
- Animaciones suaves
- Estados hover en botones

EVENTOS:
- DOMContentLoaded: inicialización
- Form submit: prevenir default y validar
- Modal events: reset formulario al cerrar
- Input events: búsqueda en tiempo real (debounce 300ms)
- Click events: botones de acción
- Change events: filtros

FUNCIONES UTILIDAD:
- formatDate(date): formato dd/MM/yyyy
- formatPhone(phone): formato visual teléfono
- calculateAge(birthDate): calcular edad
- sanitizeInput(input): limpiar entrada usuario
- showLoading(element): mostrar spinner
- hideLoading(element): ocultar spinner

MANEJO DE ERRORES:
- Network errors: mensaje "Error de conexión"
- 404 errors: "Paciente no encontrado"
- 409 errors: "DNI o email ya existe"
- 422 errors: "No se puede eliminar, tiene citas pendientes"
- Validation errors: mostrar en campos específicos
- Generic errors: mensaje genérico con código

REQUISITOS TÉCNICOS:
- ES6+ syntax (const, let, arrow functions, async/await)
- Fetch API para AJAX
- SweetAlert2 para alertas
- Bootstrap 5 JavaScript para modales
- Debounce para búsqueda
- LocalStorage para preferencias usuario

Genera el código JavaScript completo con manejo de errores robusto y UX profesional siguiendo los patrones X21A.
```

## 🎯 **Resultado Final**

Con estos prompts obtienes una aplicación completa de gabinete de psicología con:

- ✅ **Backend completo**: Entidades, Repositories, Services, Controllers
- ✅ **Frontend profesional**: Thymeleaf + Bootstrap 5 + JavaScript
- ✅ **Base de datos**: Scripts Oracle con datos de prueba
- ✅ **Validaciones**: Client-side y server-side
- ✅ **UX/UI**: Diseño sanitario profesional
- ✅ **Calidad**: Siguiendo patrones X21A y reglas de código

## 📋 **Checklist Final**

- [ ] Entidades JPA generadas y validadas
- [ ] Repositories con consultas personalizadas
- [ ] Services con lógica de negocio
- [ ] Controllers con APIs REST
- [ ] Vista Thymeleaf responsive
- [ ] JavaScript con AJAX completo
- [ ] Scripts SQL Oracle
- [ ] Validaciones completas
- [ ] Manejo de errores robusto
- [ ] Diseño profesional sanitario