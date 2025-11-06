# X21A Framework - Templates para IA

Framework completo para generar aplicaciones Spring Boot enterprise con cualquier IA (ChatGPT, Claude, Amazon Q, etc.).

## 🚀 Características

- ✅ **Generación automática** de entidades, CRUD y UI
- ✅ **Control de calidad** con checkpoints de aprobación
- ✅ **Diseño enterprise** profesional con Bootstrap 5
- ✅ **Base Spring Boot** preconfigurada con Oracle
- ✅ **Reglas de código** (Checkstyle, PMD, SpotBugs)
- ✅ **Documentación completa** paso a paso

## 📁 Estructura del Proyecto

```
x21a-framework/
├── generators/           # Prompts para generar código
├── templates/           # Plantillas base
├── base-project/        # Proyecto Spring Boot base
├── rules/              # Reglas de calidad de código
├── docs/               # Documentación completa
└── examples/           # Ejemplos de uso
```

## 🎯 Uso Rápido

### 1. Generar una aplicación completa

Copia este prompt a cualquier IA:

```
Genera una aplicación completa siguiendo las especificaciones del repositorio:
https://github.com/[tu-usuario]/x21a-framework

Quiero que lo generes en la siguiente ruta: C:\tu\ruta\proyecto

Nombre del proyecto: [nombre-proyecto]
Entidad principal: [NombreEntidad]
Campos: [campo1, campo2, campo3, ...]
```

### 2. Ejemplo práctico

```
Genera una aplicación completa siguiendo las especificaciones del repositorio:
https://github.com/[tu-usuario]/x21a-framework

Quiero que lo generes en la siguiente ruta: C:\Users\usuario\workspace\mi-proyecto

Nombre del proyecto: sistema-biblioteca
Entidad principal: Libro
Campos: titulo, autor, isbn, precio, stock, categoria
```

## 📚 Documentación

- [📖 Guía Paso a Paso](docs/test-guide-step-by-step.md) - Tutorial completo
- [🔄 Flujo de Aprobación](docs/approval-workflow.md) - Control de calidad
- [🛠️ Manual de Desarrollo](docs/development-guide.md) - Configuración técnica
- [🤖 Manual de IA](docs/ai-generation-manual.md) - Uso con diferentes IAs

## 🎨 Generadores Disponibles

| Generador | Descripción | Archivo |
|-----------|-------------|---------|
| **Entity** | Genera entidades JPA con Oracle | [entity-generator.md](generators/entity-generator.md) |
| **CRUD** | Genera Controller, Service, Repository | [crud-generator.md](generators/crud-generator.md) |
| **UI** | Genera vistas Thymeleaf profesionales | [ui-generator.md](generators/ui-generator.md) |
| **Prototype** | Genera prototipos HTML iterativos | [prototype-generator.md](generators/prototype-generator.md) |

## 🏗️ Arquitectura

### Stack Tecnológico
- **Backend**: Spring Boot 2.7.18, Oracle Database
- **Frontend**: Thymeleaf, Bootstrap 5, Font Awesome
- **Calidad**: Checkstyle, PMD, SpotBugs, JaCoCo
- **Deployment**: Tomcat 9, Java 11

### Patrón MVC
```
Controller → Service → Repository → Entity
     ↓
Thymeleaf View (Bootstrap 5 + JavaScript)
```

## 🔧 Configuración Rápida

### 1. Clonar el repositorio
```bash
git clone https://github.com/[tu-usuario]/x21a-framework.git
cd x21a-framework
```

### 2. Configurar base de datos
```properties
# application.properties
spring.datasource.jndi-name=java:comp/env/jdbc/x21DataSource
spring.jpa.database-platform=org.hibernate.dialect.Oracle12cDialect
```

### 3. Usar con cualquier IA
- Copia el contenido de `docs/test-guide-step-by-step.md`
- Pégalo en tu IA favorita
- Sigue las instrucciones paso a paso

## 📊 Ejemplos de Uso

### Aplicaciones Generadas
- **Sistema de Biblioteca** - Gestión de libros y préstamos
- **Clínica de Psicología** - Gestión de pacientes y citas
- **Inventario de Productos** - Control de stock y ventas
- **Gestión de Empleados** - RRHH y nóminas

### IAs Compatibles
- ✅ **Amazon Q Developer**
- ✅ **ChatGPT (GPT-4)**
- ✅ **Claude (Anthropic)**
- ✅ **GitHub Copilot**
- ✅ **Gemini (Google)**

## 🎯 Proceso de Generación

1. **Análisis** - La IA analiza los requisitos
2. **Prototipo** - Genera HTML con diseño profesional
3. **Iteración** - Refina el diseño con checkpoints
4. **Aprobación** - Usuario valida cada fase
5. **Código** - Genera Spring Boot basado en prototipo aprobado

## 🏆 Ventajas

- **Rapidez**: Aplicación completa en 15-30 minutos
- **Calidad**: Código enterprise con estándares profesionales
- **Control**: Checkpoints de aprobación en cada fase
- **Flexibilidad**: Compatible con cualquier IA
- **Escalabilidad**: Base sólida para proyectos grandes

## 📝 Licencia

MIT License - Libre para uso comercial y personal.

## 🤝 Contribuciones

¡Las contribuciones son bienvenidas! Por favor:

1. Fork el repositorio
2. Crea una rama para tu feature
3. Commit tus cambios
4. Push a la rama
5. Abre un Pull Request

## 📞 Soporte

- **Issues**: [GitHub Issues](https://github.com/[tu-usuario]/x21a-framework/issues)
- **Documentación**: [Wiki del proyecto](https://github.com/[tu-usuario]/x21a-framework/wiki)
- **Ejemplos**: Carpeta `examples/`

---

**¡Genera aplicaciones enterprise en minutos con cualquier IA!** 🚀