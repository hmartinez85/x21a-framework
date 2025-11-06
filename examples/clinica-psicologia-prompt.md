# Prompt: Clínica de Psicología

Copia este prompt completo en tu IA favorita para generar una aplicación de gestión de clínica psicológica.

---

## 🎯 PROMPT PARA IA

```
Genera una aplicación completa siguiendo las especificaciones del repositorio:
https://github.com/[tu-usuario]/x21a-framework

Quiero que lo generes en la siguiente ruta: C:\Users\usuario\workspace\clinica-psicologia

Nombre del proyecto: clinica-psicologia
Entidad principal: Paciente
Campos: nombre, apellidos, dni, telefono, email, fechaNacimiento, direccion, historialMedico

ESPECIFICACIONES TÉCNICAS:
- Spring Boot 2.7.18
- Oracle Database con JNDI
- Thymeleaf + Bootstrap 5
- Patrón MVC completo
- Diseño profesional sanitario

FUNCIONALIDADES REQUERIDAS:
1. CRUD completo de pacientes
2. Búsqueda por nombre, apellidos, DNI
3. Cálculo automático de edad
4. Gestión de historial médico
5. Validaciones de formulario
6. Generación de DNI temporal si está vacío
7. Dashboard con estadísticas

PROCESO:
1. Sigue la guía paso a paso del repositorio
2. Genera prototipo HTML profesional con tema sanitario
3. Itera el diseño con checkpoints de aprobación
4. Genera código Spring Boot final
5. Valida que coincida exactamente con el prototipo

¿Estás listo para comenzar?
```

---

## 📋 Checklist de Validación

### ✅ Checkpoint 1: Estructura Base
- [ ] Formulario de paciente con todos los campos
- [ ] Tabla de listado con información médica
- [ ] Cálculo automático de edad
- [ ] Búsqueda por múltiples criterios
- [ ] Tema visual sanitario/médico

### ✅ Checkpoint 2: Mejoras UX/UI
- [ ] Colores apropiados para sector salud
- [ ] Iconos médicos (Font Awesome)
- [ ] Espaciado profesional
- [ ] Formularios accesibles
- [ ] Diseño confiable y serio

### ✅ Checkpoint 3: Refinamiento Avanzado
- [ ] Componentes médicos especializados
- [ ] Validaciones de datos médicos
- [ ] Historial médico expandible
- [ ] Alertas de información importante
- [ ] Nivel profesional sanitario

### ✅ Checkpoint 4: Código Final
- [ ] Vista Thymeleaf idéntica al prototipo
- [ ] Validaciones médicas funcionando
- [ ] Generación de DNI temporal
- [ ] Cálculo de edad automático
- [ ] Sin errores de consola

## 🎨 Resultado Esperado

Una aplicación completa de gestión de clínica psicológica con:
- **Frontend**: Diseño profesional sanitario
- **Backend**: API REST para gestión de pacientes
- **Base de datos**: Entidad Paciente con Oracle
- **Funcionalidades**: CRUD, historial médico, estadísticas

## 📊 Campos de la Entidad Paciente

| Campo | Tipo | Validación | Descripción |
|-------|------|------------|-------------|
| `id` | Long | Auto-generado | ID único (Oracle Sequence) |
| `nombre` | String | Requerido, max 50 | Nombre del paciente |
| `apellidos` | String | Requerido, max 100 | Apellidos del paciente |
| `dni` | String | Único | DNI (auto-generado si vacío) |
| `telefono` | String | Requerido | Teléfono de contacto |
| `email` | String | Email válido | Correo electrónico |
| `fechaNacimiento` | Date | Opcional | Fecha de nacimiento |
| `direccion` | String | Opcional | Dirección del paciente |
| `historialMedico` | Text | Opcional | Historial médico detallado |

## 🏥 Características Especiales

### Generación de DNI Temporal
```java
// Si DNI está vacío, genera: TEMP-123456
if (empty(dni)) {
    dni = generarDniTemporal();
}
```

### Cálculo de Edad
```java
// Calcula edad automáticamente desde fechaNacimiento
int edad = calcularEdad(fechaNacimiento);
```

### Validaciones Médicas
- DNI único en el sistema
- Teléfono requerido para emergencias
- Email con formato válido
- Historial médico expandible

## 🚀 Tiempo Estimado

- **Prototipo inicial**: 5 minutos
- **Iteraciones de diseño**: 15 minutos
- **Generación de código**: 10 minutos
- **Total**: ~30 minutos

¡Copia el prompt y comienza a generar tu sistema de clínica psicológica! 🏥