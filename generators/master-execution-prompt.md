# 🚀 PROMPT MAESTRO - Framework x21a V3.0 Execution

## 📋 INSTRUCCIONES PARA LA IA

**EJECUTA TODO EL FRAMEWORK x21a V3.0 AUTOMÁTICAMENTE siguiendo estos pasos:**

### 🎯 DATOS DEL PROYECTO (COMPLETAR AQUÍ)

```
DOMINIO_NEGOCIO: [Ej: Tienda de Venta de Coches]
NOMBRE_PROYECTO: [Ej: concesionario-app]  
ENTIDAD_PRINCIPAL: [Ej: Vehiculo]
RUTA_PROYECTO: [Ej: C:\app_ejie\tomcat\tomcat9\pruebaCoches]
PUBLICO_OBJETIVO: [Ej: Vendedores y clientes de concesionario]
CAMPOS_ENTIDAD: [Ej: marca, modelo, año, precio, combustible, kilometros, estado]
FRONTEND_TECH: [OPCIONAL - Si no se define, se preguntará en CHECKPOINT PREVIO]
COLOR_PRIMARIO: [Ej: #2563eb - Azul profesional]
COLOR_SECUNDARIO: [Ej: #64748b - Gris corporativo]
```

### 🔄 PROCESO AUTOMÁTICO

**🔴 CHECKPOINT PREVIO: VALIDACIÓN TÉCNICA COMPLETA**

**PREGUNTAS TÉCNICAS OBLIGATORIAS - RESPONDER TODAS ANTES DE CONTINUAR:**

1. **TECNOLOGÍA FRONTEND:**
   - **OPCIÓN 1: REACT + MATERIAL-UI** - Moderno, componentes Google Material Design
   - **OPCIÓN 2: ANGULAR + ANGULAR MATERIAL** - Enterprise, TypeScript, Material Design
   - **OPCIÓN 3: REACT + ATLASSIAN DESIGN SYSTEM** - Empresarial, componentes Atlassian
   - **OPCIÓN 4: THYMELEAF + BOOTSTRAP** - Tradicional, server-side rendering
   
   **❓ ¿Qué tecnología frontend prefieres?**

2. **TIPO DE DESPLIEGUE:**
   - **JAR STANDALONE** - Servidor embebido (java -jar)
   - **WAR PARA TOMCAT** - Despliegue en servidor externo
   
   **❓ ¿Qué tipo de despliegue necesitas?**

3. **VERSIÓN SPRING BOOT:**
   - **2.7.18** - LTS, compatible con Java 8/11
   - **3.x** - Más reciente, requiere Java 17+
   
   **❓ ¿Mantener Spring Boot 2.7.18 o actualizar?**

4. **PUERTO ESPECÍFICO:**
   **❓ ¿Puerto específico requerido? (ej: 8081, 8080, 9090)**

5. **BASE DE DATOS:**
   **❓ ¿Tienes credenciales Oracle reales o usar datos hardcodeados?**
   **❓ ¿Existe proyecto previo con context.xml para copiar?**

6. **DESIGN SYSTEM:**
   **❓ ¿Tienes preferencias específicas de design system o colores corporativos?**

**🚨 REGLA CRÍTICA: SI EL USUARIO YA ESPECIFICÓ TECNOLOGÍAS EN SU SOLICITUD:**
- **NUNCA cambiar sin consultar**
- **SIEMPRE respetar las especificaciones del usuario**
- **SOLO sugerir alternativas si hay incompatibilidades técnicas**

**PASO 0.1: VALIDACIÓN DE SISTEMA (NUEVO)**
1. Ejecutar `check-compatibility.bat` (verificar Java, Node, npm)
2. Verificar puerto libre con netstat
3. Validar versiones de herramientas
4. **CHECKPOINT SISTEMA**: ¿Entorno compatible confirmado?

**CONTINUAR SOLO DESPUÉS DE OBTENER TODAS LAS RESPUESTAS**

**PASO 0: DESIGN SYSTEM**
1. Toma los datos del proyecto de arriba
2. Ejecuta el design-system-prompt.md sustituyendo todos los placeholders
3. Genera el archivo `design-system-[NOMBRE_PROYECTO].md`
4. Valida CHECKPOINT 0

**PASO 1: ANÁLISIS DEL DOMINIO**
1. Ejecuta análisis completo del dominio de negocio
2. Identifica entidades, relaciones y reglas de negocio
3. Genera `analisis-dominio-[NOMBRE_PROYECTO].txt`
4. Valida que el análisis es completo

**PASO 2: PROTOTIPO HTML INICIAL**
1. Crea prototipo HTML con Bootstrap 5 y datos hardcodeados
2. Incluye 15 registros de ejemplo realistas
3. Diseño comercial profesional
4. Genera `prototipo-[NOMBRE_PROYECTO]-v1.html`

**PASO 2.5: REFINAMIENTO ITERATIVO**
1. **ITERACIÓN 1**: Mejoras básicas UX/UI
   - Genera `prototipo-[NOMBRE_PROYECTO]-v2.html`
   - CHECKPOINT 1: ¿Mejora significativamente el v1?

2. **ITERACIÓN 2**: Refinamiento avanzado
   - Añade animaciones y microinteracciones
   - Genera `prototipo-[NOMBRE_PROYECTO]-final.html`
   - CHECKPOINT 2: ¿Tiene nivel enterprise profesional?

**PASO 3: BACKEND COMPLETO CON VALIDACIONES MEJORADAS**
1. **CHECKPOINT 0.5 MEJORADO**: Verificar BBDD REAL
   - **❓ ¿Tienes credenciales Oracle reales o usar hardcoded?**
   - **❓ ¿Existe proyecto previo con context.xml para copiar?**
   - Mostrar DDL de tablas a crear
   - **❓ ¿Confirmas que las tablas están creadas en BBDD?**
   - **NO CONTINUAR hasta recibir confirmación**

2. Genera entidad JPA con validaciones y enums
3. Genera Repository con consultas personalizadas
4. Genera Service con lógica de negocio MEJORADA:
   - **🔴 VALIDAR: Métodos NUNCA retornan null (usar Optional)**
   - **🔴 VALIDAR: Cálculos matemáticos con BigDecimal**
   - **🔴 VALIDAR: Manejo de excepciones robusto**
5. Genera Controller REST/MVC según tecnología frontend
6. Genera application.properties con puerto específico
7. Genera context.xml con credenciales reales si es WAR

**PASO 4: FRONTEND CONECTADO A BBDD REAL**
1. **SEGÚN TECNOLOGÍA SELECCIONADA:**
   - **Si REACT**: Componentes React + API REST + **FallbackUI OBLIGATORIO**
   - **Si ANGULAR**: Componentes Angular + HTTP Client
   - **Si THYMELEAF**: Vistas Thymeleaf + Controller MVC

2. **🔴 REGLA CRÍTICA**: Frontend debe consumir datos REALES de la API
3. **🔴 REGLA CRÍTICA**: Crear FallbackUI como backup si falla API
4. **🔴 REGLA CRÍTICA**: Implementar loading states y error handling
5. **🔴 REGLA CRÍTICA**: CRUD completo funcional (crear, leer, actualizar, eliminar)
6. **CHECKPOINT 3**: ¿Frontend consume datos reales de BBDD?
7. **CHECKPOINT 4**: ¿CRUD completo funciona con BBDD real?

**PASO 5: SCRIPTS DE TROUBLESHOOTING (NUEVO)**
1. Genera `check-system.bat` - Verificar Java, Node, npm
2. Genera `fix-react-errors.bat` - Solucionar errores React comunes
3. Genera `test-bbdd-connection.bat` - Probar conexión Oracle
4. Genera `deploy-debug.bat` - Despliegue con logs detallados
5. Genera `fix-dependencies.bat` - Resolver conflictos NPM con --legacy-peer-deps

**PASO 6: VALIDACIÓN FINAL CON BBDD REAL**
1. **CHECKPOINT 5**: Validación completa con BBDD
   - **🔴 CRÍTICO**: Verificar conexión a BBDD Oracle
   - **🔴 CRÍTICO**: Probar CRUD completo (crear, leer, actualizar, eliminar)
   - **🔴 CRÍTICO**: Validar que los datos se guardan en BBDD
   - **🔴 CRÍTICO**: Verificar que la aplicación arranca SIN errores
   - **🔴 CRÍTICO**: Probar búsquedas y filtros con datos reales

2. **CHECKPOINT 6**: Verificación de funcionalidad completa
   - ¿CRUD completo funciona con datos reales?
   - ¿Las búsquedas funcionan con datos reales?
   - ¿La aplicación arranca sin errores de consola?
   - ¿FallbackUI funciona si falla la API?

3. **PASO 7: DOCUMENTACIÓN DE TROUBLESHOOTING (NUEVO)**
   - Genera `TROUBLESHOOTING-[PROYECTO].md` con errores y soluciones
   - Genera `DEPLOYMENT-GUIDE-[PROYECTO].md` con pasos de despliegue
   - Genera `CONFIGURACION-BBDD-REAL.md` con setup de base de datos

4. **CONFIRMACIÓN FINAL**: ¿Aplicación 100% funcional con BBDD real?

### ⚙️ CONFIGURACIÓN TÉCNICA FIJA

```properties
# application.properties - PUERTO DINÁMICO
server.port=[PUERTO_SERVIDOR]
server.servlet.context-path=/[NOMBRE_PROYECTO]
spring.datasource.jndi-name=java:comp/env/jdbc/x21d
spring.jpa.hibernate.ddl-auto=validate
spring.jpa.show-sql=true
```

```json
// package.json - OPTIMIZADO CON FALLBACKS
{
  "scripts": {
    "install-deps": "npm install --legacy-peer-deps",
    "build": "npm run build --legacy-peer-deps",
    "fix-deps": "npm audit fix --legacy-peer-deps",
    "dev": "webpack --mode development --watch",
    "start": "webpack serve --mode development"
  },
  "dependencies": {
    "react": "^18.2.0",
    "react-dom": "^18.2.0",
    "axios": "^1.6.0"
  }
}
```

```xml
<!-- context.xml - CON CREDENCIALES REALES -->
<Context>
    <Resource name="jdbc/x21d" 
              auth="Container" 
              type="javax.sql.DataSource"
              driverClassName="oracle.jdbc.OracleDriver"
              url="jdbc:oracle:thin:@//x21d:1530/x21.ejie.eus"
              username="[USUARIO_REAL]" 
              password="[PASSWORD_REAL]"
              maxTotal="20" 
              maxIdle="10"/>
</Context>
```

### 🔧 GESTIÓN DE DEPENDENCIAS CRÍTICA

**PARA REACT + ATLASSIAN DESIGN SYSTEM:**
- **REGLA CRÍTICA**: SIEMPRE usar `--legacy-peer-deps`
- **CREAR FallbackUI.js** como backup obligatorio
- **USAR React.createElement()** si JSX falla
- **IMPLEMENTAR Error Boundaries** en React

### 📁 ESTRUCTURA DE ARCHIVOS ESPERADA

```
[RUTA_PROYECTO]/
├── FRAMEWORK-X21A-V3.md
├── design-system-[NOMBRE_PROYECTO].md
├── analisis-dominio-[NOMBRE_PROYECTO].txt
├── prototipos/
│   ├── prototipo-[NOMBRE_PROYECTO]-v1.html
│   ├── prototipo-[NOMBRE_PROYECTO]-v2.html
│   └── prototipo-[NOMBRE_PROYECTO]-final.html
├── src/main/java/com/ejie/[NOMBRE_PROYECTO]/
│   ├── [NOMBRE_PROYECTO]Application.java
│   ├── entity/[ENTIDAD].java
│   ├── repository/[ENTIDAD]Repository.java
│   ├── service/[ENTIDAD]Service.java
│   └── controller/[ENTIDAD]Controller.java
├── src/main/resources/
│   ├── application.properties
│   └── data.sql
├── src/main/webapp/
│   ├── META-INF/context.xml (solo WAR)
│   ├── index.html
│   └── static/
│       ├── components/
│       │   ├── App.js
│       │   └── FallbackUI.js (OBLIGATORIO REACT)
│       ├── css/
│       └── js/
├── package.json
├── webpack.config.js
├── check-system.bat
├── fix-react-errors.bat
├── test-bbdd-connection.bat
├── deploy-debug.bat
├── fix-dependencies.bat
├── TROUBLESHOOTING-[PROYECTO].md
├── DEPLOYMENT-GUIDE-[PROYECTO].md
└── CONFIGURACION-BBDD-REAL.md
```

### ✅ CHECKPOINTS OBLIGATORIOS - NO CONTINUAR SIN CONFIRMACIÓN

**🔴 CRÍTICO: CADA CHECKPOINT REQUIERE CONFIRMACIÓN EXPLÍCITA DEL USUARIO**

- **CHECKPOINT PREVIO**: ¿Todas las preguntas técnicas respondidas?
- **CHECKPOINT SISTEMA**: ¿Entorno compatible Y puerto libre?
- **CHECKPOINT 0**: ¿Design System completo y personalizado?
- **CHECKPOINT 0.5**: ¿BBDD real conectada Y credenciales válidas?
- **CHECKPOINT 1**: ¿Prototipo v2 mejora v1 Y es responsive?
- **CHECKPOINT 2**: ¿Prototipo final enterprise Y animaciones fluidas?
- **CHECKPOINT 3**: ¿Frontend consume datos reales SIN errores consola?
- **CHECKPOINT 4**: ¿CRUD completo funciona con BBDD real?
- **CHECKPOINT 5**: ¿Aplicación arranca sin errores Y FallbackUI funciona?
- **CHECKPOINT 6**: ¿Funcionalidad completa validada con datos reales?
- **CHECKPOINT FINAL**: ¿Aplicación 100% operativa con BBDD real?

### 🎯 RESULTADO FINAL ESPERADO

Al completar la ejecución debes haber generado:
1. ✅ Aplicación funcionando al 100% con datos reales
2. ✅ Scripts de troubleshooting para errores comunes
3. ✅ FallbackUI funcional como backup (si React)
4. ✅ Documentación completa de deployment
5. ✅ Validación técnica en cada paso
6. ✅ CRUD completo con base de datos real
7. ✅ Conexión Oracle con credenciales reales
8. ✅ Logs detallados de todo el proceso
9. ✅ URLs de testing y verificación
10. ✅ **GARANTÍA**: Aplicación arranca sin errores en primer intento

---

## 🚀 COMANDO DE EJECUCIÓN

**Para ejecutar, simplemente di:**

"Ejecuta el Framework x21a V3.0 MEJORADO con los datos del proyecto que he proporcionado. Incluye todas las validaciones, fallbacks y optimizaciones basadas en la experiencia real."

**La IA debe:**
1. Leer los datos del proyecto
2. **EJECUTAR CHECKPOINT PREVIO OBLIGATORIO** (preguntas técnicas optimizadas)
3. **RESPETAR ESPECIFICACIONES DEL USUARIO** (nunca cambiar sin consultar)
4. Ejecutar cada paso automáticamente con validaciones mejoradas
5. **PARAR EN CADA CHECKPOINT** hasta recibir confirmación
6. Generar todos los archivos con fallbacks
7. **VALIDAR LÓGICA DE NEGOCIO** (no null, cálculos correctos, sin errores)
8. Crear scripts de troubleshooting automáticos
9. Reportar el progreso paso a paso
10. Confirmar la finalización exitosa

---

## 🚨 REGLAS CRÍTICAS - CUMPLIMIENTO OBLIGATORIO

### 🔴 RESPETO A ESPECIFICACIONES DEL USUARIO
- **SI EL USUARIO ESPECIFICA REACT**: Usar REACT + crear FallbackUI
- **SI EL USUARIO ESPECIFICA PUERTO**: Usar ESE puerto exacto
- **SI EL USUARIO ESPECIFICA RUTA TOMCAT**: Usar ESA ruta exacta
- **NUNCA cambiar tecnologías sin consultar explícitamente**

### 🔴 SISTEMA DE CHECKPOINTS MEJORADO
- **CADA CHECKPOINT requiere confirmación del usuario**
- **NO CONTINUAR** hasta recibir "SÍ" o "CONTINÚA"
- **MOSTRAR CLARAMENTE** qué se va a hacer en el siguiente paso
- **INCLUIR validaciones técnicas** en cada checkpoint

### 🔴 VALIDACIÓN DE CÓDIGO MEJORADA
- **PROBAR métodos de cálculo** antes de finalizar
- **VERIFICAR que NO hay valores null** inesperados
- **VALIDAR relaciones JPA** funcionan correctamente
- **COMPROBAR que la aplicación ARRANCA** sin errores
- **CREAR FallbackUI** siempre para React

### 🔴 GESTIÓN DE ERRORES PREDICTIVA
- **ERROR REACT #130**: Usar React.createElement() + FallbackUI
- **ERROR NPM ERESOLVE**: --legacy-peer-deps obligatorio
- **ERROR PUERTO OCUPADO**: Verificar con netstat + puerto alternativo
- **ERROR BBDD CONEXIÓN**: Test connection + fallback hardcoded

### 🔴 ESTRUCTURA DE ARCHIVOS MEJORADA
- **GENERAR TODOS los archivos** de la estructura esperada
- **USAR NOMBRES CONSISTENTES** con [NOMBRE_PROYECTO]
- **CREAR DIRECTORIOS** necesarios automáticamente
- **INCLUIR scripts de troubleshooting**

### 🔴 REPORTE DE PROGRESO MEJORADO
- **INFORMAR** antes de cada paso qué se va a hacer
- **CONFIRMAR** después de cada paso qué se completó
- **LISTAR** archivos generados con rutas completas
- **SOLICITAR CONFIRMACIÓN** en cada checkpoint
- **REPORTAR errores** encontrados y cómo se solucionaron

**❌ ERRORES COMUNES A EVITAR (BASADOS EN EXPERIENCIA REAL):**
- Cambiar React por Thymeleaf sin consultar
- Generar código con métodos que retornan null
- No preguntar por puerto específico del usuario
- No verificar si las tablas BBDD están creadas
- Continuar sin confirmación en checkpoints
- No crear FallbackUI para React
- Usar npm install sin --legacy-peer-deps
- Build en modo production (usar development para debug)
- No validar que la aplicación arranca sin errores

**FRAMEWORK X21A V3.0 - OPTIMIZADO PARA ÉXITO GARANTIZADO** 🚀