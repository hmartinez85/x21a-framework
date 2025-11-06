# Prompt: Sistema de Biblioteca

Copia este prompt completo en tu IA favorita para generar una aplicación de gestión de biblioteca.

---

## 🎯 PROMPT PARA IA

```
Genera una aplicación completa siguiendo las especificaciones del repositorio:
https://github.com/[tu-usuario]/x21a-framework

Quiero que lo generes en la siguiente ruta: C:\Users\xagustin\Entorno_UDA\workspaces\udaTemplatesIA\gestion-libros\amazonq

Nombre del proyecto: sistema-biblioteca
Entidad principal: Libro
Campos: titulo, autor, isbn, precio, stock, categoria

ESPECIFICACIONES TÉCNICAS:
- Spring Boot 2.7.18
- Oracle Database con JNDI
- Thymeleaf + Bootstrap 5
- Patrón MVC completo
- Diseño enterprise profesional

FUNCIONALIDADES REQUERIDAS:
1. CRUD completo de libros
2. Búsqueda por título, autor, ISBN
3. Filtrado por categoría
4. Paginación de resultados
5. Validaciones de formulario
6. Alertas de stock bajo
7. Estadísticas básicas

PROCESO:
1. Sigue la guía paso a paso del repositorio
2. Genera prototipo HTML profesional
3. Itera el diseño con checkpoints de aprobación
4. Genera código Spring Boot final
5. Valida que coincida exactamente con el prototipo

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