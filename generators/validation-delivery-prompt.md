# Prompt de Validación de Entrega - Framework x21a

## 🎯 Prompt para Validación Final de Código

```
VALIDA LA ENTREGA COMPLETA del proyecto generado con Framework x21a.

### 📋 INFORMACIÓN DEL PROYECTO A VALIDAR
- **Ruta del Proyecto**: [RUTA_PROYECTO]
- **Nombre**: [NOMBRE_PROYECTO]
- **Entidad Principal**: [NOMBRE_ENTIDAD]
- **URL de Acceso**: http://localhost:8081/[proyecto]/

### ✅ CHECKLIST DE VALIDACIÓN OBLIGATORIO

#### 1. ESTRUCTURA DE ARCHIVOS
Verifica que existen TODOS estos archivos:

**Backend Java:**
- [ ] `src/main/java/com/ejie/[proyecto]/[Proyecto]Application.java`
- [ ] `src/main/java/com/ejie/[proyecto]/controller/[Entidad]Controller.java`
- [ ] `src/main/java/com/ejie/[proyecto]/controller/HomeController.java`
- [ ] `src/main/java/com/ejie/[proyecto]/service/[Entidad]Service.java`
- [ ] `src/main/java/com/ejie/[proyecto]/repository/[Entidad]Repository.java`
- [ ] `src/main/java/com/ejie/[proyecto]/model/[Entidad].java`
- [ ] `src/main/java/com/ejie/[proyecto]/dto/[Entidad]DTO.java`

**Configuraciones:**
- [ ] `pom.xml` (packaging=war, Spring Boot 2.7.18)
- [ ] `src/main/resources/application.properties`
- [ ] `src/main/webapp/META-INF/context.xml`
- [ ] `src/main/resources/schema.sql`
- [ ] `src/main/resources/data.sql`

**Frontend:**
- [ ] `src/main/resources/templates/[entidad]/index.html`
- [ ] `src/main/resources/static/css/[entidad].css`
- [ ] `src/main/resources/static/js/[entidad].js`

**Documentación:**
- [ ] `README.md`
- [ ] `deploy-tomcat.bat`

#### 2. VALIDACIÓN DE CONFIGURACIONES

**POM.XML:**
- [ ] Packaging: `<packaging>war</packaging>`
- [ ] Spring Boot version: `2.7.18`
- [ ] Dependencias: web, data-jpa, thymeleaf, oracle, validation
- [ ] Plugin WAR configurado
- [ ] Tomcat provided dependency

**APPLICATION.PROPERTIES:**
- [ ] JNDI: `spring.datasource.jndi-name=java:comp/env/jdbc/[conexion]`
- [ ] Fallback datasource configurado
- [ ] Context path: `server.servlet.context-path=/[proyecto]`
- [ ] Puerto: `server.port=8081`

**CONTEXT.XML:**
- [ ] Resource name: `jdbc/[conexion]`
- [ ] URL Oracle: `jdbc:oracle:thin:@//x21d:1530/x21.ejie.eus`
- [ ] Driver: `oracle.jdbc.OracleDriver`
- [ ] Credenciales configuradas

#### 3. VALIDACIÓN DE CÓDIGO JAVA

**Entidad Principal:**
- [ ] Anotaciones JPA: `@Entity`, `@Table`
- [ ] ID con `@GeneratedValue` y `@SequenceGenerator`
- [ ] Validaciones Bean Validation
- [ ] Métodos `@PrePersist` y `@PreUpdate` (si JPA puro)
- [ ] Getters, setters, toString

**Repository:**
- [ ] Extiende `JpaRepository<[Entidad], Long>`
- [ ] Consultas personalizadas con `@Query`
- [ ] Métodos de filtrado
- [ ] Métodos de conteo para estadísticas

**Service:**
- [ ] Anotación `@Service`
- [ ] Métodos `@Transactional`
- [ ] Conversión DTO ↔ Entity
- [ ] Manejo de excepciones
- [ ] Lógica de negocio

**Controller:**
- [ ] `@Controller` y `@RequestMapping`
- [ ] Endpoint principal: `@GetMapping` → vista
- [ ] API REST: `/api/*` endpoints
- [ ] Validaciones con `@Valid`
- [ ] Manejo de errores HTTP

**HomeController:**
- [ ] `@Controller`
- [ ] `@GetMapping("/")` → `redirect:/[entidad]`

#### 4. VALIDACIÓN DE FRONTEND

**Vista Thymeleaf:**
- [ ] Bootstrap 5.3.0 incluido
- [ ] Font Awesome 6.4.0 incluido
- [ ] Google Fonts Inter incluido
- [ ] Estructura responsive
- [ ] Cards de estadísticas con datos dinámicos
- [ ] Tabla con datos de Thymeleaf
- [ ] Modal para CRUD
- [ ] Formularios con validación

**CSS:**
- [ ] Variables CSS definidas
- [ ] Animaciones y transiciones
- [ ] Diseño responsive
- [ ] Estados hover y focus
- [ ] Gradientes y sombras

**JavaScript:**
- [ ] Funciones AJAX para API REST
- [ ] CRUD completo funcional
- [ ] Filtros en tiempo real
- [ ] Validaciones client-side
- [ ] Manejo de errores
- [ ] Exportación de datos

#### 5. VALIDACIÓN DE BASE DE DATOS

**Schema.sql:**
- [ ] Tabla principal creada
- [ ] Secuencia definida
- [ ] Índices para optimización
- [ ] Constraints y validaciones
- [ ] Sin triggers (si JPA puro)

**Data.sql:**
- [ ] Mínimo 10 registros de ejemplo
- [ ] Datos realistas y variados
- [ ] Diferentes estados
- [ ] COMMIT al final

#### 6. VALIDACIÓN FUNCIONAL

**Navegación:**
- [ ] `http://localhost:8081/[proyecto]/` redirige correctamente
- [ ] `http://localhost:8081/[proyecto]/[entidad]` carga la vista
- [ ] Sin errores 404 en navegación

**CRUD Funcional:**
- [ ] Crear: Modal funciona, datos se guardan
- [ ] Leer: Lista se carga correctamente
- [ ] Actualizar: Edición funciona
- [ ] Eliminar: Borrado funciona (soft delete)

**Filtros:**
- [ ] Filtros por campos principales
- [ ] Búsqueda en tiempo real
- [ ] Limpiar filtros funciona
- [ ] Resultados se actualizan dinámicamente

**Estadísticas:**
- [ ] Contadores se cargan correctamente
- [ ] Números son precisos
- [ ] Animaciones funcionan

**API REST:**
- [ ] `GET /api/list` devuelve JSON
- [ ] `POST /api` crea registros
- [ ] `PUT /api/{id}` actualiza
- [ ] `DELETE /api/{id}` elimina
- [ ] `GET /api/estadisticas` devuelve contadores

#### 7. VALIDACIÓN DE DESPLIEGUE

**Compilación:**
- [ ] `mvn clean compile` sin errores
- [ ] `mvn package` genera WAR
- [ ] WAR contiene META-INF/context.xml

**Despliegue:**
- [ ] WAR se despliega en Tomcat sin errores
- [ ] JNDI se conecta correctamente
- [ ] Aplicación inicia sin excepciones
- [ ] Logs muestran conexión exitosa

#### 8. VALIDACIÓN DE CALIDAD

**Código:**
- [ ] Sin warnings importantes
- [ ] Nomenclatura consistente
- [ ] Comentarios en clases principales
- [ ] Estructura de paquetes correcta

**UX/UI:**
- [ ] Diseño profesional y moderno
- [ ] Responsive en móvil y desktop
- [ ] Feedback visual en acciones
- [ ] Mensajes de error claros

**Performance:**
- [ ] Carga inicial rápida
- [ ] Operaciones AJAX fluidas
- [ ] Sin memory leaks evidentes

### 🚨 CRITERIOS DE RECHAZO

**RECHAZAR si falta alguno de estos elementos críticos:**
- ❌ HomeController (causa errores 404)
- ❌ Context.xml en webapp/META-INF
- ❌ JNDI completo en application.properties
- ❌ Packaging WAR en pom.xml
- ❌ API REST no funcional
- ❌ CRUD básico no funciona
- ❌ Errores de compilación
- ❌ Errores de despliegue

### ✅ CRITERIOS DE APROBACIÓN

**APROBAR solo si:**
- ✅ Todos los archivos obligatorios existen
- ✅ Aplicación compila sin errores
- ✅ Se despliega correctamente en Tomcat
- ✅ CRUD básico funciona completamente
- ✅ API REST responde correctamente
- ✅ Navegación sin errores 404
- ✅ Diseño profesional y responsive
- ✅ Base de datos conecta correctamente

### 📊 REPORTE DE VALIDACIÓN

Genera un reporte con este formato:

```
REPORTE DE VALIDACIÓN - Framework x21a
=====================================

Proyecto: [NOMBRE_PROYECTO]
Fecha: [FECHA_VALIDACION]
Validador: [NOMBRE_VALIDADOR]

RESULTADO: [APROBADO/RECHAZADO]

CHECKLIST COMPLETADO:
- Estructura de archivos: [X/Y] ✅/❌
- Configuraciones: [X/Y] ✅/❌
- Código Java: [X/Y] ✅/❌
- Frontend: [X/Y] ✅/❌
- Base de datos: [X/Y] ✅/❌
- Funcionalidad: [X/Y] ✅/❌
- Despliegue: [X/Y] ✅/❌
- Calidad: [X/Y] ✅/❌

PUNTUACIÓN TOTAL: [X/100]

OBSERVACIONES:
- [Lista de problemas encontrados]
- [Recomendaciones de mejora]

PRÓXIMOS PASOS:
- [Acciones requeridas si rechazado]
- [Mejoras sugeridas si aprobado]
```

¿Estás listo para validar la entrega del proyecto?
```

## 📋 Uso del Prompt

1. **Copia el prompt completo**
2. **Reemplaza los placeholders** con datos del proyecto
3. **Ejecuta la validación** paso a paso
4. **Genera el reporte** con resultados
5. **Decide aprobación/rechazo** basado en criterios

## 🎯 Objetivo

Garantizar que todas las entregas del Framework x21a cumplan con los estándares de calidad, funcionalidad y despliegue establecidos.