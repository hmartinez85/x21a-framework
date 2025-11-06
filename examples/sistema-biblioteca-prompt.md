# Prompt: Sistema de Biblioteca

Copia este prompt completo en tu IA favorita para generar una aplicación de gestión de biblioteca.

---

## 🎯 PROMPT PARA IA

```
Genera una aplicación completa siguiendo las especificaciones del repositorio:
https://github.com/hmartinez85/x21a-framework

Quiero que lo generes en la siguiente ruta: C:\Entorno_UDA\workspaces\udaTemplatesIA\gestion-libros\amazonq

Nombre del proyecto: sistema-biblioteca
Entidad principal: Libro
Campos: titulo, autor, isbn, precio, stock, categoria

ESPECIFICACIONES TÉCNICAS:
- Spring Boot 2.7.18
- Oracle Database con JNDI
- Thymeleaf + Bootstrap 5
- Patrón MVC completo (Controller, Service, Repository)
- Diseño enterprise profesional

ARCHIVOS OBLIGATORIOS A GENERAR:

📁 ESTRUCTURA COMPLETA:
```
sistema-biblioteca/
├── src/main/java/com/ejie/biblioteca/
│   ├── controller/LibroController.java
│   ├── service/LibroService.java
│   ├── repository/LibroRepository.java
│   ├── model/Libro.java (extends BaseEntity)
│   └── BibliotecaApplication.java
├── src/main/resources/
│   ├── templates/libros/list.html
│   ├── static/css/style.css
│   ├── static/js/app.js
│   ├── application.properties
│   └── data.sql
├── src/main/webapp/
│   ├── META-INF/context.xml
│   └── WEB-INF/web.xml
├── database/schema.sql
├── pom.xml
├── README.md
├── DEPLOYMENT.md
└── TOMCAT-SETUP.md
```

📋 CONFIGURACIONES ESPECÍFICAS:

1. **pom.xml**: Spring Boot 2.7.18, Oracle driver, Thymeleaf, Bootstrap
2. **application.properties**: JNDI DataSource, Oracle dialect, logging
3. **context.xml**: JNDI configurado para x21d:1530/x21.ejie.eus
4. **schema.sql**: Tabla LIBROS con secuencia e índices
5. **data.sql**: 10+ libros de ejemplo

📊 ENTIDAD LIBRO:
```java
@Entity
@Table(name = "LIBROS")
public class Libro extends BaseEntity {
    @Column(name = "TITULO", nullable = false, length = 200)
    private String titulo;
    
    @Column(name = "AUTOR", nullable = false, length = 100)
    private String autor;
    
    @Column(name = "ISBN", unique = true, length = 20)
    private String isbn;
    
    @Column(name = "PRECIO", precision = 10, scale = 2)
    private BigDecimal precio;
    
    @Column(name = "STOCK")
    private Integer stock;
    
    @Column(name = "CATEGORIA", length = 50)
    private String categoria;
}
```

🎨 FUNCIONALIDADES REQUERIDAS:
1. CRUD completo con validaciones
2. Búsqueda por título, autor, ISBN
3. Filtrado por categoría
4. Paginación (20 registros por página)
5. Alertas de stock bajo (< 5 unidades)
6. Dashboard con estadísticas
7. Exportar a Excel/PDF
8. Responsive design completo

🔧 CONFIGURACIÓN ORACLE:
- Host: x21d:1530/x21.ejie.eus
- Usuario: xxxxxxxx / Password: xxxxxxxx
- JNDI: java:comp/env/jdbc/x21DataSource
- Dialect: Oracle12cDialect

📝 DOCUMENTACIÓN OBLIGATORIA:
- README.md con instrucciones completas
- DEPLOYMENT.md para WebLogic/Tomcat
- TOMCAT-SETUP.md paso a paso
- Comentarios en código

PROCESO:
1. Sigue la guía paso a paso del repositorio
2. Genera prototipo HTML profesional
3. Itera el diseño con checkpoints de aprobación
4. Genera código Spring Boot final completo
5. Valida que coincida exactamente con el prototipo
6. Incluye TODOS los archivos de configuración

¿Estás listo para comenzar?
```

---

## 📋 Checklist de Validación

### ✅ Checkpoint 1: Estructura Base
- [ ] Formulario de libro con todos los campos
- [ ] Tabla de listado con paginación
- [ ] Botones de acción (Crear, Editar, Eliminar)
- [ ] Búsqueda funcional
- [ ] Diseño Bootstrap profesional

### ✅ Checkpoint 2: Mejoras UX/UI
- [ ] Espaciado profesional y consistente
- [ ] Colores corporativos apropiados
- [ ] Animaciones suaves en hover
- [ ] Iconos Font Awesome
- [ ] Tipografía legible y atractiva

### ✅ Checkpoint 3: Refinamiento Avanzado
- [ ] Microinteracciones elegantes
- [ ] Componentes avanzados (modales, tooltips)
- [ ] Responsive design perfecto
- [ ] Accesibilidad implementada
- [ ] Nivel enterprise profesional

### ✅ Checkpoint 4: Código Final
- [ ] Vista Thymeleaf idéntica al prototipo
- [ ] Funcionalidad AJAX integrada
- [ ] Validaciones funcionando
- [ ] Sin errores de consola
- [ ] URLs con contexto correcto

## 🎨 Resultado Esperado

Una aplicación completa de gestión de biblioteca con:
- **Frontend**: Diseño moderno y profesional
- **Backend**: API REST completa
- **Base de datos**: Entidad Libro con Oracle
- **Funcionalidades**: CRUD, búsqueda, paginación, estadísticas

## 📊 Campos de la Entidad Libro

| Campo | Tipo | Validación | Descripción |
|-------|------|------------|-------------|
| `id` | Long | Auto-generado | ID único (Oracle Sequence) |
| `titulo` | String | Requerido, max 200 | Título del libro |
| `autor` | String | Requerido, max 100 | Autor del libro |
| `isbn` | String | Requerido, único | ISBN del libro |
| `precio` | BigDecimal | Requerido, > 0 | Precio del libro |
| `stock` | Integer | Requerido, >= 0 | Cantidad en stock |
| `categoria` | String | Requerido | Categoría del libro |

## 🚀 Tiempo Estimado

- **Prototipo inicial**: 5 minutos
- **Iteraciones de diseño**: 15 minutos
- **Generación de código**: 10 minutos
- **Total**: ~30 minutos

¡Copia el prompt y comienza a generar tu sistema de biblioteca! 📚