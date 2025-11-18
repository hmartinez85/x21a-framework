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

**CHECKPOINT PREVIO: SELECCIÓN DE TECNOLOGÍA FRONTEND**

**SI FRONTEND_TECH NO ESTÁ DEFINIDO:**
1. Presenta las 4 opciones disponibles:
   - **OPCIÓN 1: REACT + MATERIAL-UI** - Moderno, componentes Google Material Design
   - **OPCIÓN 2: ANGULAR + ANGULAR MATERIAL** - Enterprise, TypeScript, Material Design
   - **OPCIÓN 3: REACT + ATLASSIAN DESIGN SYSTEM** - Empresarial, componentes Atlassian
   - **OPCIÓN 4: THYMELEAF + BOOTSTRAP** - Tradicional, server-side rendering

2. Pregunta al usuario: "¿Qué tecnología frontend prefieres para tu proyecto [DOMINIO_NEGOCIO]?"

3. Espera la respuesta del usuario

4. Actualiza FRONTEND_TECH con la opción seleccionada

5. Continúa con PASO 0

**SI FRONTEND_TECH YA ESTÁ DEFINIDO:**
- Continúa directamente con PASO 0

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
1. Genera entidad JPA con validaciones y enums
2. Genera Repository con consultas personalizadas
3. Genera Service con lógica de negocio
4. Genera Controller REST con endpoints CRUD
5. Genera application.properties con JNDI Oracle
6. Genera context.xml para Tomcat

**PASO 4: FRONTEND FINAL**
1. Genera vista Thymeleaf basada en prototipo final
2. Genera JavaScript con AJAX funcional
3. CHECKPOINT 3: ¿Vista Thymeleaf es idéntica al prototipo?

**PASO 5: VALIDACIÓN FINAL**
1. Compara prototipos generados
2. Verifica consistencia
3. CHECKPOINT 4: ¿Funcionalidad AJAX completa?

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

### ✅ CHECKPOINTS OBLIGATORIOS

- **CHECKPOINT PREVIO**: ¿Tecnología frontend seleccionada?
- **CHECKPOINT 0**: ¿Design System completo y personalizado?
- **CHECKPOINT 1**: ¿Prototipo v2 mejora significativamente el v1?
- **CHECKPOINT 2**: ¿Prototipo final tiene nivel enterprise profesional?
- **CHECKPOINT 3**: ¿Vista Thymeleaf es visualmente idéntica al prototipo final?
- **CHECKPOINT 4**: ¿Toda la funcionalidad AJAX funciona correctamente?

### 🎯 RESULTADO FINAL ESPERADO

Al completar la ejecución debes haber generado:
1. ✅ Design System personalizado
2. ✅ Análisis de dominio completo
3. ✅ 3 prototipos HTML evolutivos
4. ✅ Backend Spring Boot completo y funcional
5. ✅ Frontend Thymeleaf profesional
6. ✅ JavaScript con AJAX operativo
7. ✅ Todos los checkpoints validados

---

## 🚀 COMANDO DE EJECUCIÓN

**Para ejecutar, simplemente di:**

"Ejecuta el Framework x21a completo con los datos del proyecto que he proporcionado arriba. Sigue todos los pasos secuencialmente, genera todos los archivos y valida todos los checkpoints."

**La IA debe:**
1. Leer los datos del proyecto
2. **VERIFICAR si FRONTEND_TECH está definido**
   - Si NO: Ejecutar CHECKPOINT PREVIO (preguntar tecnología)
   - Si SÍ: Continuar directamente
3. Ejecutar cada paso automáticamente
4. Generar todos los archivos
5. Validar cada checkpoint
6. Reportar el progreso paso a paso
7. Confirmar la finalización exitosa