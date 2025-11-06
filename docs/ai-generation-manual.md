# Manual de Generación con IA - X21A Framework

## 🤖 Guía Completa para Generar Aplicaciones con IA

Este manual te guía paso a paso para generar una aplicación completa usando el framework X21A con prompts optimizados para IA.

## 📋 Ejemplo Práctico: Gabinete de Psicología

### 🎯 **Paso 1: Análisis del Dominio**

**Prompt Inicial para IA:**
```
Analiza el siguiente dominio de negocio y identifica las entidades principales:

DOMINIO: Gabinete de Psicología
- Gestión de pacientes con datos personales y historial clínico
- Programación de citas con diferentes tipos de sesión
- Control de pagos y facturación
- Seguimiento de tratamientos y evolución
- Gestión de horarios del psicólogo

Identifica:
1. Entidades principales con sus atributos
2. Relaciones entre entidades
3. Reglas de negocio importantes
4. Casos de uso principales

Responde en formato estructurado.
```

### 🏗️ **Paso 2: Generación de Entidades**

**Prompt para Entidad Paciente:**
```
Usando el framework X21A de EJIE, genera una entidad JPA para PACIENTES con estas especificaciones:

CONTEXTO: Gabinete de Psicología
ENTIDAD: Paciente
TABLA: PACIENTES

CAMPOS REQUERIDOS:
- Datos personales: nombre, apellidos, DNI, fecha nacimiento, teléfono, email
- Dirección: calle, ciudad, código postal
- Información clínica: motivo consulta, observaciones médicas
- Datos administrativos: fecha alta, estado (activo/inactivo)
- Contacto emergencia: nombre y teléfono

VALIDACIONES:
- DNI: formato español válido
- Email: formato válido, único
- Teléfono: formato español
- Nombre y apellidos: obligatorios, máximo 100 caracteres
- Fecha nacimiento: no puede ser futura

REQUISITOS TÉCNICOS:
- Extiende BaseEntity del framework X21A
- Usa secuencia SEQ_PACIENTES
- Anotaciones Jackson para JSON
- Validaciones Bean Validation
- Constructor vacío y con parámetros
- Métodos equals, hashCode, toString

Genera el código Java completo siguiendo los patrones X21A.
```

**Prompt para Entidad Cita:**
```
Usando el framework X21A de EJIE, genera una entidad JPA para CITAS con estas especificaciones:

CONTEXTO: Gabinete de Psicología
ENTIDAD: Cita
TABLA: CITAS

CAMPOS REQUERIDOS:
- Relación con paciente (FK)
- Fecha y hora de la cita
- Duración en minutos (30, 45, 60, 90)
- Tipo de sesión: PRIMERA_CONSULTA, SEGUIMIENTO, TERAPIA_GRUPAL, EVALUACION
- Estado: PROGRAMADA, CONFIRMADA, REALIZADA, CANCELADA, NO_ASISTIO
- Precio de la sesión
- Notas del psicólogo
- Información de pago: pagado (sí/no), método pago, fecha pago

VALIDACIONES:
- Fecha cita: no puede ser en el pasado
- Duración: solo valores permitidos (30, 45, 60, 90)
- Precio: mayor que 0, máximo 200€
- Tipo sesión: solo valores del enum
- Estado: solo valores del enum

RELACIONES:
- ManyToOne con Paciente

REQUISITOS TÉCNICOS:
- Extiende BaseEntity del framework X21A
- Usa secuencia SEQ_CITAS
- Enums para tipo_sesion y estado
- Formato fecha: dd/MM/yyyy HH:mm:ss
- Validaciones Bean Validation completas

Genera el código Java completo siguiendo los patrones X21A.
```

### 🔧 **Paso 3: Generación de Servicios y Repositorios**

**Prompt para Repository Paciente:**
```
Usando el framework X21A de EJIE, genera un Repository JPA para la entidad Paciente con estas especificaciones:

FUNCIONALIDADES REQUERIDAS:
- CRUD básico (heredado de JpaRepository)
- Búsqueda por nombre o apellidos (ignorando mayúsculas)
- Búsqueda por DNI exacto
- Búsqueda por email exacto
- Filtrar por estado (ACTIVE/INACTIVE)
- Buscar pacientes dados de alta en un rango de fechas
- Buscar pacientes con citas pendientes
- Contar pacientes activos

CONSULTAS PERSONALIZADAS:
- Pacientes con más de X citas
- Pacientes sin citas en los últimos X días
- Búsqueda combinada por nombre, apellidos, DNI o email

REQUISITOS TÉCNICOS:
- Interface que extiende JpaRepository<Paciente, Long>
- Anotación @Repository
- Consultas JPQL para casos complejos
- Parámetros con @Param
- Paginación con Pageable donde corresponda

Genera el código Java completo siguiendo los patrones X21A.
```

**Prompt para Service Paciente:**
```
Usando el framework X21A de EJIE, genera un Service para la entidad Paciente con estas especificaciones:

FUNCIONALIDADES REQUERIDAS:
- CRUD completo con validaciones de negocio
- Búsqueda con paginación
- Validación de DNI único
- Validación de email único
- Activar/desactivar paciente
- Obtener estadísticas (total activos, nuevos este mes, etc.)
- Validar que no tenga citas futuras antes de desactivar

REGLAS DE NEGOCIO:
- No permitir duplicados de DNI
- No permitir duplicados de email
- Validar formato DNI español
- Al desactivar, verificar que no tenga citas futuras
- Calcular edad automáticamente
- Logging de operaciones importantes

MANEJO DE ERRORES:
- Excepciones personalizadas para reglas de negocio
- Validaciones antes de guardar
- Transacciones apropiadas

REQUISITOS TÉCNICOS:
- Anotación @Service
- @Transactional en métodos que modifican datos
- @Transactional(readOnly = true) en consultas
- Inyección de dependencias con @Autowired
- Logging con SLF4J
- Validaciones Bean Validation

Genera el código Java completo siguiendo los patrones X21A.
```

### 🎮 **Paso 4: Generación de Controladores**

**Prompt para Controller Paciente:**
```
Usando el framework X21A de EJIE, genera un Controller completo para la entidad Paciente con estas especificaciones:

ENDPOINTS REQUERIDOS:
- GET /pacientes/list - Vista principal con listado paginado
- GET /pacientes/{id} - Obtener paciente por ID (JSON)
- POST /pacientes/add - Crear nuevo paciente (JSON)
- PUT /pacientes/update/{id} - Actualizar paciente (JSON)
- DELETE /pacientes/delete/{id} - Eliminar paciente (JSON)
- GET /pacientes/search - Búsqueda con paginación (JSON)
- GET /pacientes/page - Paginación (JSON)
- GET /pacientes/stats - Estadísticas (JSON)

FUNCIONALIDADES:
- Listado principal con Thymeleaf
- API REST para operaciones AJAX
- Paginación completa
- Búsqueda por nombre, apellidos, DNI, email
- Manejo de errores con respuestas JSON
- Validaciones con @Valid
- Logging de operaciones

VISTA THYMELEAF:
- Debe pasar datos de paginación
- Estadísticas para cards
- Lista de pacientes para tabla
- Configuración de contexto /psicologia-app

REQUISITOS TÉCNICOS:
- Anotación @Controller
- @RequestMapping("/pacientes")
- Inyección de PacienteService
- ResponseEntity para APIs JSON
- Model para vistas Thymeleaf
- Manejo de excepciones
- URLs con contexto /psicologia-app

Genera el código Java completo siguiendo los patrones X21A.
```

### 🎨 **Paso 5: Generación de Frontend**

**Prompt para Vista Pacientes:**
```
Usando el framework X21A de EJIE, genera una vista Thymeleaf completa para gestión de PACIENTES con estas especificaciones:

CONTEXTO: Gabinete de Psicología (/psicologia-app)
ENTIDAD: Pacientes
TÍTULO: Gestión de Pacientes

COMPONENTES REQUERIDOS:
1. Header con título y botón "Nuevo Paciente"
2. Cards de estadísticas:
   - Total pacientes activos
   - Nuevos este mes
   - Con citas pendientes
   - Inactivos
3. Filtros y búsqueda:
   - Campo de búsqueda por nombre/apellidos/DNI/email
   - Filtro por estado (Todos/Activos/Inactivos)
   - Botón limpiar filtros
4. Tabla responsive con:
   - Checkbox selección múltiple
   - ID, Nombre completo, DNI, Teléfono, Email, Estado, Fecha alta
   - Botones de acción: Editar, Ver historial, Eliminar
5. Paginación funcional
6. Modal para crear/editar con campos:
   - Nombre, Apellidos, DNI, Fecha nacimiento
   - Teléfono, Email, Dirección completa
   - Motivo consulta, Observaciones
   - Contacto emergencia

CARACTERÍSTICAS UI:
- Bootstrap 5 con tema profesional sanitario
- Iconos Font Awesome médicos
- Colores: azul sanitario (#0066cc), verde éxito, rojo peligro
- Animaciones suaves
- Responsive design
- SweetAlert2 para confirmaciones
- Validaciones client-side

FUNCIONALIDADES JS:
- CRUD completo con AJAX
- Búsqueda en tiempo real
- Paginación dinámica
- Validación de DNI español
- Validación de email
- Confirmaciones de eliminación
- Feedback visual (loading, success, error)

Genera el código HTML completo con Thymeleaf, CSS personalizado y JavaScript siguiendo los patrones X21A.
```

**Prompt para JavaScript Pacientes:**
```
Usando el framework X21A de EJIE, genera el JavaScript completo para la gestión de PACIENTES con estas especificaciones:

CONTEXTO: /psicologia-app/pacientes
FUNCIONALIDADES REQUERIDAS:

1. VARIABLES GLOBALES:
   - Control de paginación (página actual, tamaño, total)
   - Estado de búsqueda
   - ID de edición actual

2. FUNCIONES PRINCIPALES:
   - loadPage(page) - Cargar página con paginación
   - searchPacientes(page) - Búsqueda con filtros
   - savePaciente() - Crear/actualizar paciente
   - editPaciente(id) - Cargar datos para editar
   - deletePaciente(id) - Eliminar con confirmación
   - updatePagination() - Actualizar controles paginación
   - updateTableBody(data) - Actualizar tabla
   - updateStats(stats) - Actualizar cards estadísticas

3. VALIDACIONES CLIENT-SIDE:
   - DNI español válido (regex + algoritmo)
   - Email formato válido
   - Teléfono español válido
   - Campos obligatorios
   - Fecha nacimiento no futura

4. CARACTERÍSTICAS:
   - URLs con contexto /psicologia-app
   - Manejo de errores con try-catch
   - SweetAlert2 para confirmaciones
   - Loading states
   - Feedback visual
   - Búsqueda en tiempo real (debounce)
   - Limpiar formularios
   - Reset modal al cerrar

5. EVENTOS:
   - DOMContentLoaded para inicialización
   - Submit formularios
   - Click botones acción
   - Input búsqueda
   - Change filtros
   - Modal events

Genera el código JavaScript completo siguiendo los patrones X21A con manejo de errores robusto.
```

### 📊 **Paso 6: Generación de Base de Datos**

**Prompt para Scripts SQL:**
```
Usando el framework X21A de EJIE, genera los scripts SQL completos para Oracle Database con estas especificaciones:

CONTEXTO: Gabinete de Psicología
ENTIDADES: Pacientes, Citas

REQUERIMIENTOS:
1. Script de creación de tablas:
   - PACIENTES con todos los campos definidos
   - CITAS con relación FK a PACIENTES
   - Índices apropiados para rendimiento
   - Constraints de integridad

2. Secuencias Oracle:
   - SEQ_PACIENTES (start with 1, increment by 1)
   - SEQ_CITAS (start with 1, increment by 1)

3. Triggers para auditoría:
   - Actualizar UPDATED_DATE automáticamente
   - Logging de cambios importantes

4. Datos de prueba:
   - 10 pacientes de ejemplo con datos realistas
   - 20 citas de ejemplo con diferentes estados
   - Datos coherentes entre tablas

5. Índices de rendimiento:
   - Búsquedas por DNI, email
   - Búsquedas por fecha de citas
   - Filtros por estado

CARACTERÍSTICAS:
- Comentarios explicativos
- Manejo de errores (IF EXISTS)
- Tipos de datos Oracle apropiados
- Constraints con nombres descriptivos
- Datos de prueba realistas (nombres españoles)

Genera los scripts SQL completos (schema.sql y data.sql) siguiendo los estándares Oracle y X21A.
```

## 🔄 **Flujo Completo de Generación**

### **Orden Recomendado:**

1. **Análisis del Dominio** → Identificar entidades y relaciones
2. **Entidades JPA** → Generar modelos de datos
3. **Scripts SQL** → Crear base de datos
4. **Repositories** → Acceso a datos
5. **Services** → Lógica de negocio
6. **Controllers** → APIs y vistas
7. **Frontend** → Interfaces de usuario
8. **Testing** → Pruebas unitarias e integración

### **Prompts de Validación:**

**Prompt de Revisión Completa:**
```
Revisa el código generado para la aplicación de Gabinete de Psicología usando el framework X21A y verifica:

CHECKLIST TÉCNICO:
□ Todas las entidades extienden BaseEntity
□ Secuencias Oracle configuradas correctamente
□ Validaciones Bean Validation completas
□ Anotaciones JPA apropiadas
□ Repositories con consultas necesarias
□ Services con transacciones
□ Controllers con endpoints REST
□ URLs con contexto /psicologia-app
□ Frontend Bootstrap 5 responsive
□ JavaScript con manejo de errores
□ Logging apropiado

CHECKLIST FUNCIONAL:
□ CRUD completo para pacientes
□ CRUD completo para citas
□ Búsquedas y filtros
□ Paginación funcional
□ Validaciones de negocio
□ Manejo de relaciones FK
□ Estadísticas y reportes

CHECKLIST CALIDAD:
□ Nomenclatura consistente
□ Código limpio y documentado
□ Manejo de excepciones
□ Validaciones client-side
□ Feedback visual apropiado
□ Responsive design

Identifica problemas y sugiere mejoras siguiendo los estándares X21A.
```

## 📝 **Plantillas de Prompts Reutilizables**

### **Para Cualquier Dominio:**

```
PLANTILLA ENTIDAD:
Usando el framework X21A de EJIE, genera una entidad JPA para [NOMBRE_ENTIDAD] con estas especificaciones:

CONTEXTO: [DESCRIPCIÓN_DOMINIO]
ENTIDAD: [NombreEntidad]
TABLA: [NOMBRE_TABLA]

CAMPOS REQUERIDOS:
[Lista de campos con tipos y restricciones]

VALIDACIONES:
[Reglas de validación específicas]

RELACIONES:
[Relaciones con otras entidades]

REQUISITOS TÉCNICOS:
- Extiende BaseEntity del framework X21A
- Usa secuencia SEQ_[NOMBRE_TABLA]
- Anotaciones Jackson para JSON
- Validaciones Bean Validation
- Constructor vacío y con parámetros

Genera el código Java completo siguiendo los patrones X21A.
```

Este manual te permite generar aplicaciones completas y profesionales usando IA con el framework X21A, manteniendo consistencia y calidad en todo el código generado.
