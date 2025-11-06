# Generador de Aplicación Completa - X21A Framework

## 🎯 Prompt Principal para IA

```
GENERA UNA APLICACIÓN SPRING BOOT COMPLETA con estas especificaciones:

### 📋 INFORMACIÓN DEL PROYECTO
- **Nombre**: [NOMBRE_PROYECTO]
- **Entidad Principal**: [NOMBRE_ENTIDAD]
- **Campos**: [LISTA_CAMPOS]
- **Ruta**: [RUTA_DESTINO]

### 🏗️ ESTRUCTURA COMPLETA OBLIGATORIA

Debes generar TODOS estos archivos:

```
[proyecto]/
├── src/main/java/com/ejie/[proyecto]/
│   ├── controller/[Entidad]Controller.java
│   ├── service/[Entidad]Service.java
│   ├── repository/[Entidad]Repository.java
│   ├── model/[Entidad].java (extends BaseEntity)
│   └── [Proyecto]Application.java
├── src/main/resources/
│   ├── templates/[entidad]/list.html
│   ├── static/css/style.css
│   ├── static/js/app.js
│   ├── application.properties
│   └── data.sql
├── src/main/webapp/
│   ├── META-INF/context.xml
│   └── WEB-INF/web.xml
├── database/
│   └── schema.sql
├── pom.xml
├── README.md
├── DEPLOYMENT.md
└── TOMCAT-SETUP.md
```

### ⚙️ CONFIGURACIONES ESPECÍFICAS

**1. pom.xml** - Spring Boot 2.7.18:
```xml
<groupId>com.ejie</groupId>
<artifactId>[proyecto]</artifactId>
<version>1.0.0</version>
<packaging>war</packaging>

<dependencies>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-web</artifactId>
        <version>2.7.18</version>
    </dependency>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-data-jpa</artifactId>
    </dependency>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-thymeleaf</artifactId>
    </dependency>
    <dependency>
        <groupId>com.oracle.database.jdbc</groupId>
        <artifactId>ojdbc8</artifactId>
    </dependency>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-validation</artifactId>
    </dependency>
</dependencies>
```

**2. application.properties**:
```properties
# JNDI DataSource
spring.datasource.jndi-name=java:comp/env/jdbc/x21DataSource

# Oracle Database
spring.jpa.database-platform=org.hibernate.dialect.Oracle12cDialect
spring.jpa.hibernate.ddl-auto=validate
spring.jpa.show-sql=false

# Thymeleaf
spring.thymeleaf.cache=false

# Server
server.port=8081
server.servlet.context-path=/[proyecto]

# Logging
logging.level.com.ejie.[proyecto]=INFO
```

**3. context.xml**:
```xml
<Context>
    <Resource name="jdbc/x21DataSource"
              auth="Container"
              type="javax.sql.DataSource"
              username="xxxxxxxx"
              password="xxxxxxxx"
              driverClassName="oracle.jdbc.OracleDriver"
              url="jdbc:oracle:thin:@x21d:1530/x21.ejie.eus"
              maxTotal="20"
              maxIdle="5"
              maxWaitMillis="10000"/>
</Context>
```

**4. web.xml**:
```xml
<web-app version="4.0">
    <filter>
        <filter-name>CharacterEncodingFilter</filter-name>
        <filter-class>org.springframework.web.filter.CharacterEncodingFilter</filter-class>
        <init-param>
            <param-name>encoding</param-name>
            <param-value>UTF-8</param-value>
        </init-param>
    </filter>
    <filter-mapping>
        <filter-name>CharacterEncodingFilter</filter-name>
        <url-pattern>/*</url-pattern>
    </filter-mapping>
    <resource-ref>
        <res-ref-name>jdbc/x21DataSource</res-ref-name>
        <res-type>javax.sql.DataSource</res-type>
        <res-auth>Container</res-auth>
    </resource-ref>
</web-app>
```

### 📊 ENTIDAD BASE

```java
@Entity
@Table(name = "[ENTIDAD_PLURAL]")
public class [Entidad] extends BaseEntity {
    
    // Campos específicos con validaciones JPA
    // Usar @NotBlank, @Size, @Pattern según corresponda
    
    // Constructor vacío obligatorio
    public [Entidad]() {
        super();
    }
    
    // Getters y setters
    // toString, equals, hashCode
}
```

### 🎨 FRONTEND PROFESIONAL

**Bootstrap 5 + Thymeleaf**:
- Cards con estadísticas
- Tabla responsive con paginación
- Modales para CRUD
- Búsqueda en tiempo real
- Alertas SweetAlert2
- Animaciones CSS
- Diseño enterprise profesional

### 🗄️ BASE DE DATOS ORACLE

**schema.sql**:
```sql
-- Crear tabla
CREATE TABLE [ENTIDAD_PLURAL] (
    ID NUMBER(19) NOT NULL,
    -- Campos específicos
    CREATED_DATE DATE DEFAULT SYSDATE,
    UPDATED_DATE DATE,
    VERSION NUMBER(10) DEFAULT 0,
    CONSTRAINT PK_[ENTIDAD_PLURAL] PRIMARY KEY (ID)
);

-- Crear secuencia
CREATE SEQUENCE [ENTIDAD]_SEQ START WITH 1 INCREMENT BY 1;

-- Crear trigger
CREATE OR REPLACE TRIGGER TRG_[ENTIDAD]_ID
    BEFORE INSERT ON [ENTIDAD_PLURAL]
    FOR EACH ROW
BEGIN
    IF :NEW.ID IS NULL THEN
        SELECT [ENTIDAD]_SEQ.NEXTVAL INTO :NEW.ID FROM DUAL;
    END IF;
END;

-- Insertar datos de ejemplo (mínimo 10 registros)
```

### 📚 DOCUMENTACIÓN OBLIGATORIA

1. **README.md**: Descripción, instalación, uso
2. **DEPLOYMENT.md**: Guía de despliegue WebLogic/Tomcat
3. **TOMCAT-SETUP.md**: Setup paso a paso

### ✅ FUNCIONALIDADES REQUERIDAS

- ✅ CRUD completo con validaciones
- ✅ Búsqueda y filtrado
- ✅ Paginación (20 registros por página)
- ✅ Dashboard con estadísticas
- ✅ Responsive design
- ✅ Manejo de errores
- ✅ Logging configurado
- ✅ Datos de ejemplo

### 🎯 ENDPOINTS OBLIGATORIOS

- `GET /[entidad]/list` - Vista principal
- `POST /[entidad]/save` - Crear/actualizar
- `DELETE /[entidad]/delete/{id}` - Eliminar
- `GET /[entidad]/search` - Búsqueda

### 🔧 VALIDACIÓN POST-GENERACIÓN

Verifica que se generaron TODOS los archivos:
- [ ] Estructura Java completa (Controller, Service, Repository, Model)
- [ ] Configuraciones (pom.xml, application.properties, context.xml, web.xml)
- [ ] Frontend (HTML, CSS, JS)
- [ ] Base de datos (schema.sql, data.sql)
- [ ] Documentación (README, DEPLOYMENT, TOMCAT-SETUP)

¿Estás listo para generar la aplicación completa?
```

## 📋 Checklist de Validación

### ✅ Estructura Java
- [ ] Controller con endpoints REST
- [ ] Service con lógica de negocio
- [ ] Repository con consultas JPA
- [ ] Entity con validaciones
- [ ] Application class principal

### ✅ Configuraciones
- [ ] pom.xml con dependencias correctas
- [ ] application.properties con JNDI
- [ ] context.xml para Tomcat
- [ ] web.xml con filtros

### ✅ Frontend
- [ ] Vista Thymeleaf responsive
- [ ] CSS con Bootstrap 5
- [ ] JavaScript con AJAX
- [ ] Componentes profesionales

### ✅ Base de Datos
- [ ] Script schema.sql completo
- [ ] Datos de ejemplo en data.sql
- [ ] Secuencias y triggers Oracle

### ✅ Documentación
- [ ] README con instrucciones
- [ ] DEPLOYMENT para producción
- [ ] TOMCAT-SETUP paso a paso

## 🚀 Resultado Final

Una aplicación Spring Boot enterprise completa, lista para desplegar en Tomcat con Oracle, incluyendo toda la documentación y configuraciones necesarias.