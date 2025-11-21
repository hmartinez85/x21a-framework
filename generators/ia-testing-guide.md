# 🤖 GUÍA DE TESTING PARA IA - Framework x21a V3.0

## 📋 CHECKLIST DE VALIDACIÓN POST-GENERACIÓN

### ✅ ESTRUCTURA DEL PROYECTO
- [ ] Carpetas creadas correctamente
- [ ] Archivos principales generados
- [ ] Estructura Maven/Gradle válida
- [ ] Dependencias correctas en pom.xml/build.gradle

### ✅ BACKEND VALIDATION
- [ ] Entidades JPA generadas
- [ ] Repositorios funcionales
- [ ] Servicios implementados
- [ ] Controllers REST operativos
- [ ] Configuración de base de datos
- [ ] Validaciones de campos

### ✅ FRONTEND VALIDATION
- [ ] Componentes React/Thymeleaf generados
- [ ] Formularios funcionales
- [ ] Tablas con datos
- [ ] Navegación operativa
- [ ] Estilos aplicados correctamente
- [ ] Responsive design

### ✅ INTEGRACIÓN
- [ ] API REST responde correctamente
- [ ] Frontend consume API
- [ ] CRUD completo funcional
- [ ] Manejo de errores
- [ ] Validaciones cliente/servidor

### ✅ DESPLIEGUE
- [ ] WAR/JAR se genera sin errores
- [ ] Aplicación arranca en puerto especificado
- [ ] Base de datos se conecta
- [ ] Logs sin errores críticos

## 🧪 CASOS DE PRUEBA AUTOMATIZADOS

### TEST 1: GENERACIÓN BÁSICA
```bash
# Verificar estructura
ls -la C:\test\pruebaLibreria1\
# Verificar compilación
mvn clean compile
# Verificar tests
mvn test
```

### TEST 2: VALIDACIÓN API
```bash
# Verificar endpoints
curl -X GET http://localhost:8082/api/libros
curl -X POST http://localhost:8082/api/libros -H "Content-Type: application/json" -d '{"titulo":"Test","autor":"Test"}'
```

### TEST 3: VALIDACIÓN FRONTEND
- Abrir http://localhost:8082
- Verificar formulario de creación
- Verificar listado de datos
- Verificar edición/eliminación

## 🔍 PUNTOS CRÍTICOS A REVISAR

### ERRORES COMUNES
1. **Nombres de campos inconsistentes** entre frontend/backend
2. **Tipos de datos incorrectos** en entidades
3. **Rutas API mal configuradas**
4. **Dependencias faltantes** en pom.xml
5. **Configuración de puerto** incorrecta

### VALIDACIONES ESPECÍFICAS POR TECNOLOGÍA

#### REACT + MATERIAL-UI
- [ ] Componentes Material-UI importados (@mui/material, @mui/icons-material)
- [ ] Theme provider configurado
- [ ] Estado de componentes manejado
- [ ] Axios configurado para API calls
- [ ] React Router configurado
- [ ] Formularios con validación Material-UI

#### REACT + ATLASSIAN DESIGN SYSTEM
- [ ] Componentes Atlassian importados (@atlaskit/*)
- [ ] Tokens de diseño aplicados
- [ ] Navegación con Atlassian components
- [ ] Page layouts correctos
- [ ] Formularios con Atlassian Form components

#### REACT + ANT DESIGN
- [ ] Componentes Ant Design importados (antd)
- [ ] ConfigProvider configurado
- [ ] Layout y Grid system implementado
- [ ] Form validation con Ant Design
- [ ] Table components funcionales
- [ ] Icons de Ant Design aplicados

#### ANGULAR + ANGULAR MATERIAL
- [ ] Angular CLI y @angular/material instalados
- [ ] Angular Material theme configurado
- [ ] Componentes Material (MatButton, MatTable, MatForm) importados
- [ ] Angular animations habilitadas
- [ ] Routing de Angular configurado
- [ ] Services para HTTP Client implementados
- [ ] Formularios reactivos con Angular Material

#### THYMELEAF + BOOTSTRAP
- [ ] Templates Thymeleaf válidos
- [ ] Bootstrap CSS incluido
- [ ] Formularios con th:object
- [ ] Listados con th:each
- [ ] Componentes Bootstrap funcionales

## 📊 MÉTRICAS DE CALIDAD

### COBERTURA MÍNIMA ESPERADA
- **Compilación**: 100% sin errores
- **Tests unitarios**: >80% cobertura
- **Funcionalidad CRUD**: 100% operativa
- **Validaciones**: 100% implementadas

### PERFORMANCE BENCHMARKS
- **Tiempo de arranque**: <30 segundos
- **Respuesta API**: <200ms
- **Carga de página**: <2 segundos
- **Tamaño WAR/JAR**: <50MB

## 🚨 PROTOCOLO DE FALLOS

### SI LA GENERACIÓN FALLA:
1. **Verificar parámetros de entrada**
2. **Revisar logs de generación**
3. **Validar estructura de carpetas**
4. **Comprobar permisos de escritura**

### SI LA COMPILACIÓN FALLA:
1. **Revisar dependencias en pom.xml**
2. **Verificar versiones de Java**
3. **Limpiar cache Maven**
4. **Regenerar proyecto si es necesario**

### SI EL DESPLIEGUE FALLA:
1. **Verificar puerto disponible**
2. **Comprobar configuración de BD**
3. **Revisar logs de Tomcat**
4. **Validar contexto de aplicación**

## 📝 TEMPLATE DE REPORTE DE TESTING

```markdown
## REPORTE DE TESTING - [NOMBRE_PROYECTO]

**Fecha**: [FECHA]
**Tester**: [NOMBRE]
**Versión Framework**: x21a V3.0

### CONFIGURACIÓN PROBADA
- Dominio: [DOMINIO]
- Entidad: [ENTIDAD]
- Frontend: [TECNOLOGÍA]
- Despliegue: [TIPO]
- Puerto: [PUERTO]

### RESULTADOS
- ✅/❌ Generación exitosa
- ✅/❌ Compilación sin errores
- ✅/❌ Despliegue funcional
- ✅/❌ CRUD operativo
- ✅/❌ Frontend responsive

### ISSUES ENCONTRADOS
1. [Descripción del issue]
2. [Descripción del issue]

### TIEMPO TOTAL
- Generación: [X] minutos
- Testing: [X] minutos
- Total: [X] minutos

### RECOMENDACIONES
- [Mejora sugerida 1]
- [Mejora sugerida 2]
```

## 🎯 OBJETIVOS DE CALIDAD

### METAS V3.0
- **95% éxito** en generación automática
- **<5 minutos** tiempo total de generación
- **0 errores** de compilación en casos estándar
- **100% funcionalidad** CRUD básica

### CRITERIOS DE ACEPTACIÓN
- Proyecto generado compila sin errores
- Aplicación arranca correctamente
- CRUD básico funciona completamente
- Frontend es responsive y funcional
- Documentación generada es precisa