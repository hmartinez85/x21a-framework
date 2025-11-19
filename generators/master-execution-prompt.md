# 🚀 PROMPT MAESTRO - Framework x21a Execution

## 📋 INSTRUCCIONES PARA LA IA

**EJECUTA TODO EL FRAMEWORK x21a AUTOMÁTICAMENTE siguiendo estos pasos:**

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

4. **DESIGN SYSTEM:**
   **❓ ¿Tienes preferencias específicas de design system o colores corporativos?**

**🚨 REGLA CRÍTICA: SI EL USUARIO YA ESPECIFICÓ TECNOLOGÍAS EN SU SOLICITUD:**
- **NUNCA cambiar sin consultar**
- **SIEMPRE respetar las especificaciones del usuario**
- **SOLO sugerir alternativas si hay incompatibilidades técnicas**

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

**PASO 3: BACKEND COMPLETO**
1. **CHECKPOINT 0.5**: Verificar estructura BBDD
   - Mostrar DDL de tablas a crear
   - **❓ ¿Confirmas que las tablas están creadas en BBDD?**
   - **NO CONTINUAR hasta recibir confirmación**

2. Genera entidad JPA con validaciones y enums
3. Genera Repository con consultas personalizadas
4. Genera Service con lógica de negocio
   - **🔴 VALIDAR: Métodos no retornen null**
   - **🔴 VALIDAR: Cálculos matemáticos correctos**
5. Genera Controller REST/MVC según tecnología frontend
6. Genera application.properties según tipo despliegue
7. Genera context.xml solo si es WAR para Tomcat

**PASO 4: FRONTEND FINAL**
1. **SEGÚN TECNOLOGÍA SELECCIONADA:**
   - **Si REACT**: Componentes React + Design System elegido
   - **Si ANGULAR**: Componentes Angular + Material
   - **Si THYMELEAF**: Vistas Thymeleaf + Bootstrap

2. **🔴 REGLA CRÍTICA**: Respetar EXACTAMENTE la tecnología especificada
3. Genera funcionalidad completa según framework
4. **CHECKPOINT 3**: ¿Vista frontend es idéntica al prototipo?
5. **CHECKPOINT 4**: ¿Funcionalidad completa operativa?

**PASO 5: VALIDACIÓN FINAL**
1. **CHECKPOINT 5**: Validación lógica de negocio
   - Probar métodos de cálculo
   - Verificar que no hay valores null inesperados
   - Validar relaciones entre entidades

2. Compara prototipos generados
3. Verifica consistencia tecnológica
4. **CONFIRMACIÓN FINAL**: ¿Todo funciona según especificaciones?

### ⚙️ CONFIGURACIÓN TÉCNICA FIJA

```properties
# application.properties
server.port=8081
server.servlet.context-path=/[NOMBRE_PROYECTO]
spring.datasource.jndi-name=java:comp/env/jdbc/x21d
spring.jpa.hibernate.ddl-auto=validate
spring.jpa.show-sql=true
spring.boot.version=2.7.18
```

```xml
<!-- context.xml -->
<Context>
    <Resource name="jdbc/x21d" 
              auth="Container" 
              type="javax.sql.DataSource"
              driverClassName="oracle.jdbc.OracleDriver"
              url="jdbc:oracle:thin:@//x21d:1530/x21.ejie.eus"
              username="xxxxxxxx" 
              password="xxxxxxxx"
              maxTotal="20" 
              maxIdle="10"/>
</Context>
```

### 📁 ESTRUCTURA DE ARCHIVOS ESPERADA

```
[RUTA_PROYECTO]/
├── design-system-[NOMBRE_PROYECTO].md
├── analisis-dominio-[NOMBRE_PROYECTO].txt
├── prototipos/
│   ├── prototipo-[NOMBRE_PROYECTO]-v1.html
│   ├── prototipo-[NOMBRE_PROYECTO]-v2.html
│   └── prototipo-[NOMBRE_PROYECTO]-final.html
├── src/main/java/com/ejie/[NOMBRE_PROYECTO]/
│   ├── [ENTIDAD_PRINCIPAL]Application.java
│   ├── entity/[ENTIDAD_PRINCIPAL].java
│   ├── repository/[ENTIDAD_PRINCIPAL]Repository.java
│   ├── service/[ENTIDAD_PRINCIPAL]Service.java
│   └── controller/[ENTIDAD_PRINCIPAL]Controller.java
├── src/main/resources/
│   ├── application.properties
│   └── data.sql
└── src/main/webapp/
    ├── META-INF/context.xml
    └── WEB-INF/views/[ENTIDAD_PRINCIPAL]/
        └── lista.html
```

### ✅ CHECKPOINTS OBLIGATORIOS - NO CONTINUAR SIN CONFIRMACIÓN

**🔴 CRÍTICO: CADA CHECKPOINT REQUIERE CONFIRMACIÓN EXPLÍCITA DEL USUARIO**

- **CHECKPOINT PREVIO**: ¿Tecnología frontend seleccionada y confirmada?
- **CHECKPOINT 0**: ¿Design System completo y personalizado?
- **CHECKPOINT 0.5**: ¿Estructura BBDD creada y verificada?
- **CHECKPOINT 1**: ¿Prototipo v2 mejora significativamente el v1?
- **CHECKPOINT 2**: ¿Prototipo final tiene nivel enterprise profesional?
- **CHECKPOINT 3**: ¿Vista frontend es visualmente idéntica al prototipo final?
- **CHECKPOINT 4**: ¿Toda la funcionalidad funciona correctamente?
- **CHECKPOINT 5**: ¿Lógica de negocio validada sin errores null?

### 🎯 RESULTADO FINAL ESPERADO

Al completar la ejecución debes haber generado:
1. ✅ Design System personalizado
2. ✅ Análisis de dominio completo
3. ✅ 3 prototipos HTML evolutivos
4. ✅ Backend Spring Boot completo y funcional
5. ✅ Frontend Thymeleaf profesional
6. ✅ JavaScript con AJAX operativo
7. ✅ Todos los checkpoints validados
8. ✅ Lógica de negocio sin errores null
9. ✅ Tecnologías respetadas según especificaciones usuario

---

## 🚀 COMANDO DE EJECUCIÓN

**Para ejecutar, simplemente di:**

"Ejecuta el Framework x21a completo con los datos del proyecto que he proporcionado arriba. Sigue todos los pasos secuencialmente, genera todos los archivos y valida todos los checkpoints."

**La IA debe:**
1. Leer los datos del proyecto
2. **EJECUTAR CHECKPOINT PREVIO OBLIGATORIO** (preguntas técnicas)
3. **RESPETAR ESPECIFICACIONES DEL USUARIO** (nunca cambiar sin consultar)
4. Ejecutar cada paso automáticamente
5. **PARAR EN CADA CHECKPOINT** hasta recibir confirmación
6. Generar todos los archivos
7. **VALIDAR LÓGICA DE NEGOCIO** (no null, cálculos correctos)
8. Reportar el progreso paso a paso
9. Confirmar la finalización exitosa

---

## 🚨 REGLAS CRÍTICAS - CUMPLIMIENTO OBLIGATORIO

### 🔴 RESPETO A ESPECIFICACIONES DEL USUARIO
- **SI EL USUARIO ESPECIFICA REACT**: Usar REACT, no Thymeleaf
- **SI EL USUARIO ESPECIFICA ATLASSIAN**: Usar Atlassian Design System
- **SI EL USUARIO ESPECIFICA WAR**: Configurar para WAR, no JAR
- **NUNCA cambiar tecnologías sin consultar explícitamente**

### 🔴 SISTEMA DE CHECKPOINTS
- **CADA CHECKPOINT requiere confirmación del usuario**
- **NO CONTINUAR** hasta recibir "SÍ" o "CONTINÚA"
- **MOSTRAR CLARAMENTE** qué se va a hacer en el siguiente paso

### 🔴 VALIDACIÓN DE CÓDIGO
- **PROBAR métodos de cálculo** antes de finalizar
- **VERIFICAR que no hay valores null** inesperados
- **VALIDAR relaciones JPA** funcionan correctamente
- **COMPROBAR configuración** según tipo de despliegue

### 🔴 ESTRUCTURA DE ARCHIVOS
- **GENERAR TODOS los archivos** de la estructura esperada
- **USAR NOMBRES CONSISTENTES** con [NOMBRE_PROYECTO]
- **CREAR DIRECTORIOS** necesarios automáticamente

### 🔴 REPORTE DE PROGRESO
- **INFORMAR** antes de cada paso qué se va a hacer
- **CONFIRMAR** después de cada paso qué se completó
- **LISTAR** archivos generados con rutas completas
- **SOLICITAR CONFIRMACIÓN** en cada checkpoint

**❌ ERRORES COMUNES A EVITAR:**
- Cambiar React por Thymeleaf sin consultar
- Generar código con métodos que retornan null
- No preguntar por tipo de despliegue
- No verificar si las tablas BBDD están creadas
- Continuar sin confirmación en checkpoints
- Ignorar especificaciones de design system del usuario