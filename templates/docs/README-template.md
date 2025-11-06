# [NOMBRE_PROYECTO] - [DESCRIPCION_PROYECTO]

Aplicación Spring Boot enterprise generada con X21A Framework.

## 🚀 Características

- **Framework**: Spring Boot 2.7.18
- **Base de datos**: Oracle Database
- **Frontend**: Bootstrap 5 + Thymeleaf
- **Arquitectura**: MVC con capas separadas (Controller, Service, Repository)

## 📁 Estructura del Proyecto

```
src/
├── main/
│   ├── java/com/ejie/[proyecto]/
│   │   ├── controller/     # Controladores REST y MVC
│   │   ├── service/        # Lógica de negocio
│   │   ├── repository/     # Acceso a datos
│   │   ├── model/         # Entidades JPA
│   │   └── [Proyecto]Application.java
│   ├── resources/
│   │   ├── templates/     # Plantillas Thymeleaf
│   │   ├── static/        # CSS, JS, imágenes
│   │   ├── application.properties
│   │   └── data.sql       # Datos iniciales
│   └── webapp/
│       ├── META-INF/context.xml
│       └── WEB-INF/web.xml
├── database/
│   └── schema.sql         # Script de base de datos
└── pom.xml
```

## ⚙️ Configuración

### Base de Datos Oracle
- **Host**: x21d:1530/x21.ejie.eus
- **Usuario**: xxxxxxxx
- **Password**: xxxxxxxx
- **JNDI**: java:comp/env/jdbc/x21DataSource

### Ejecución Local
```bash
mvn clean compile
mvn spring-boot:run
```

### Despliegue Tomcat
```bash
mvn clean package
copy target/[proyecto].war %TOMCAT_HOME%/webapps/
```

## 🎯 Funcionalidades

- ✅ CRUD completo de [ENTIDAD]
- ✅ Búsqueda y filtrado avanzado
- ✅ Paginación de resultados
- ✅ Validaciones frontend y backend
- ✅ Interfaz responsive
- ✅ Dashboard con estadísticas

## 🌐 Endpoints

- `GET /[entidad]/list` - Vista principal
- `POST /[entidad]/save` - Crear/actualizar
- `DELETE /[entidad]/delete/{id}` - Eliminar
- `GET /[entidad]/search` - Búsqueda

## 📊 Base de Datos

Ejecutar `database/schema.sql` para crear la estructura:
```sql
sqlplus xxxxxxxx/xxxxxxxx@x21d:1530/x21.ejie.eus @database/schema.sql
```

## 🔧 Troubleshooting

- **Error JNDI**: Verificar context.xml y web.xml
- **Error BD**: Verificar credenciales y conectividad
- **Error 404**: Verificar context-path en URL

Ver `DEPLOYMENT.md` y `TOMCAT-SETUP.md` para más detalles.