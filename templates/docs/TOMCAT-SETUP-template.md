# Configuración Tomcat - [NOMBRE_PROYECTO]

## PASO 1: Preparar Base de Datos

### 1.1 Ejecutar Script SQL
Ejecutar `database/schema.sql` en Oracle:
```bash
sqlplus xxxxxxxx/xxxxxxxx@x21d:1530/x21.ejie.eus @database/schema.sql
```

### 1.2 Verificar Tabla
```sql
SELECT * FROM [ENTIDAD_PLURAL];
DESCRIBE [ENTIDAD_PLURAL];
```

## PASO 2: Configurar Tomcat

### 2.1 Instalar Driver Oracle
Descargar `ojdbc8.jar` y copiar a:
```
$TOMCAT_HOME/lib/ojdbc8.jar
```

### 2.2 Configurar DataSource
Ya configurado en `src/main/webapp/META-INF/context.xml`:
```xml
<Resource name="jdbc/x21DataSource"
          auth="Container"
          type="javax.sql.DataSource"
          username="xxxxxxxx"
          password="xxxxxxxx"
          driverClassName="oracle.jdbc.OracleDriver"
          url="jdbc:oracle:thin:@x21d:1530/x21.ejie.eus"
          maxTotal="20"
          maxIdle="5"
          maxWaitMillis="10000"
          validationQuery="SELECT 1 FROM DUAL"
          testOnBorrow="true"/>
```

## PASO 3: Configurar Aplicación

### 3.1 Configuración application.properties
Ya configurado:
```properties
# JNDI DataSource
spring.datasource.jndi-name=java:comp/env/jdbc/x21DataSource

# Oracle Database
spring.jpa.database-platform=org.hibernate.dialect.Oracle12cDialect
spring.jpa.hibernate.ddl-auto=validate
spring.jpa.show-sql=false

# Server Configuration
server.port=8081
server.servlet.context-path=/[proyecto]

# Logging
logging.level.com.ejie.[proyecto]=INFO
logging.level.org.springframework.web=DEBUG
```

## PASO 4: Compilar y Desplegar

### 4.1 Compilar WAR
```bash
cd [RUTA_PROYECTO]
mvn clean package
```

### 4.2 Desplegar en Tomcat
```bash
copy target\[proyecto]-1.0.0.war %TOMCAT_HOME%\webapps\
```

### 4.3 Iniciar Tomcat
```bash
%TOMCAT_HOME%\bin\startup.bat
```

### 4.4 Acceder a la Aplicación
```
http://localhost:8081/[proyecto]/[entidad]/list
```

## PASO 5: Verificación

### 5.1 Comprobar Despliegue
- Verificar que el WAR se expandió en `webapps/[proyecto]/`
- Revisar logs: `$TOMCAT_HOME/logs/catalina.out`

### 5.2 Probar Funcionalidades
- Acceder a la lista de [ENTIDAD_PLURAL]
- Crear un nuevo registro
- Editar un registro existente
- Eliminar un registro
- Probar búsqueda y filtros

### 5.3 Verificar Base de Datos
```sql
-- Comprobar que los datos se guardan correctamente
SELECT * FROM [ENTIDAD_PLURAL] ORDER BY ID DESC;
```

## Troubleshooting Común

### Error: "Cannot create JDBC driver"
**Solución**: Verificar que `ojdbc8.jar` está en `$TOMCAT_HOME/lib/`

### Error: "Name [jdbc/x21DataSource] is not bound"
**Solución**: Verificar configuración en `context.xml` y `web.xml`

### Error: "Table or view does not exist"
**Solución**: Ejecutar `database/schema.sql` en Oracle

### Error: "Connection refused"
**Solución**: Verificar conectividad a Oracle:
```bash
telnet x21d 1530
```

### Error 404 en la aplicación
**Solución**: Verificar URL correcta:
```
http://localhost:8081/[proyecto]/[entidad]/list
```

### Aplicación no inicia
**Solución**: Revisar logs de Tomcat:
```bash
tail -f $TOMCAT_HOME/logs/catalina.out
```