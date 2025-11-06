# Guía de Despliegue - [NOMBRE_PROYECTO]

## 🚀 Configuración para Tomcat

### 1. Preparar Base de Datos Oracle

#### 1.1 Ejecutar Script SQL
```bash
sqlplus xxxxxxxx/xxxxxxxx@x21d:1530/x21.ejie.eus @database/schema.sql
```

#### 1.2 Verificar Tabla
```sql
SELECT * FROM [ENTIDAD_PLURAL];
SELECT COUNT(*) FROM [ENTIDAD_PLURAL];
```

### 2. Configurar Tomcat

#### 2.1 Instalar Driver Oracle
Descargar `ojdbc8.jar` y copiar a:
```
$TOMCAT_HOME/lib/ojdbc8.jar
```

#### 2.2 Configurar DataSource
Ya configurado en `src/main/webapp/META-INF/context.xml`:
```xml
<Resource name="jdbc/x21DataSource"
          username="xxxxxxxx"
          password="xxxxxxxx"
          url="jdbc:oracle:thin:@x21d:1530/x21.ejie.eus"/>
```

### 3. Compilar y Desplegar

#### 3.1 Compilar WAR
```bash
cd [RUTA_PROYECTO]
mvn clean package
```

#### 3.2 Desplegar en Tomcat
```bash
copy target\[proyecto].war %TOMCAT_HOME%\webapps\
```

#### 3.3 Iniciar Tomcat
```bash
%TOMCAT_HOME%\bin\startup.bat
```

#### 3.4 Acceder a la Aplicación
```
http://localhost:8080/[proyecto]/[entidad]/list
```

## 🔧 Configuración para WebLogic

### 1. Cambiar Perfil
Editar `application.properties`:
```properties
spring.profiles.active=weblogic
```

### 2. Configuración JNDI
Configurar DataSource en WebLogic:
- **JNDI Name**: `x21a.x21aDataSource`
- **URL**: `jdbc:oracle:thin:@x21d:1530/x21.ejie.eus`
- **Usuario**: `xxxxxxxx`
- **Password**: `xxxxxxxx`

### 3. Despliegue
```bash
mvn clean package
# Copiar target/[proyecto].war a WebLogic
```

## 🐛 Troubleshooting

### Error JNDI
- Verificar `context.xml` y `web.xml`
- Comprobar que el DataSource esté configurado en Tomcat

### Error Base de Datos
- Verificar credenciales: xxxxxxxx/xxxxxxxx
- Comprobar conectividad: `telnet x21d 1530`
- Verificar que la tabla existe

### Error 404
- Verificar context-path en URL
- Comprobar que el WAR se desplegó correctamente
- Revisar logs de Tomcat: `$TOMCAT_HOME/logs/catalina.out`

### Error 500
- Revisar logs de aplicación
- Verificar configuración de base de datos
- Comprobar que los datos iniciales se cargaron

## 📊 Verificación Post-Despliegue

### 1. Comprobar Aplicación
```bash
curl http://localhost:8080/[proyecto]/[entidad]/list
```

### 2. Verificar Base de Datos
```sql
SELECT COUNT(*) FROM [ENTIDAD_PLURAL];
```

### 3. Revisar Logs
```bash
tail -f $TOMCAT_HOME/logs/catalina.out
```