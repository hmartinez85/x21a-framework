# Prompt: Inventario de Productos

Copia este prompt completo en tu IA favorita para generar una aplicación de gestión de inventario.

---

## 🎯 PROMPT PARA IA

```
Genera una aplicación completa siguiendo las especificaciones del repositorio:
https://github.com/[tu-usuario]/x21a-framework

Quiero que lo generes en la siguiente ruta: C:\Users\usuario\workspace\inventario-productos

Nombre del proyecto: inventario-productos
Entidad principal: Producto
Campos: nombre, descripcion, precio, stock, categoria, proveedor, stockMinimo

ESPECIFICACIONES TÉCNICAS:
- Spring Boot 2.7.18
- Oracle Database con JNDI
- Thymeleaf + Bootstrap 5
- Patrón MVC completo
- Diseño empresarial moderno

FUNCIONALIDADES REQUERIDAS:
1. CRUD completo de productos
2. Búsqueda por nombre, categoría, proveedor
3. Alertas de stock bajo
4. Filtrado por múltiples criterios
5. Dashboard con métricas
6. Reportes de inventario
7. Gestión de proveedores

PROCESO:
1. Sigue la guía paso a paso del repositorio
2. Genera prototipo HTML profesional empresarial
3. Itera el diseño con checkpoints de aprobación
4. Genera código Spring Boot final
5. Valida que coincida exactamente con el prototipo

¿Estás listo para comenzar?
```

---

## 📋 Checklist de Validación

### ✅ Checkpoint 1: Estructura Base
- [ ] Formulario de producto completo
- [ ] Tabla con alertas de stock bajo
- [ ] Dashboard con métricas básicas
- [ ] Búsqueda y filtros múltiples
- [ ] Diseño empresarial profesional

### ✅ Checkpoint 2: Mejoras UX/UI
- [ ] Colores corporativos modernos
- [ ] Iconos de inventario apropiados
- [ ] Cards de estadísticas atractivas
- [ ] Alertas visuales de stock
- [ ] Animaciones empresariales

### ✅ Checkpoint 3: Refinamiento Avanzado
- [ ] Dashboard con gráficos
- [ ] Componentes de reportes
- [ ] Filtros avanzados
- [ ] Exportación de datos
- [ ] Nivel enterprise premium

### ✅ Checkpoint 4: Código Final
- [ ] Vista Thymeleaf idéntica al prototipo
- [ ] Alertas de stock funcionando
- [ ] Métricas calculadas correctamente
- [ ] Filtros múltiples operativos
- [ ] Sin errores de consola

## 🎨 Resultado Esperado

Una aplicación completa de gestión de inventario con:
- **Frontend**: Dashboard empresarial moderno
- **Backend**: API REST para gestión de productos
- **Base de datos**: Entidad Producto con Oracle
- **Funcionalidades**: CRUD, alertas, reportes, métricas

## 📊 Campos de la Entidad Producto

| Campo | Tipo | Validación | Descripción |
|-------|------|------------|-------------|
| `id` | Long | Auto-generado | ID único (Oracle Sequence) |
| `nombre` | String | Requerido, max 100 | Nombre del producto |
| `descripcion` | String | Opcional, max 500 | Descripción detallada |
| `precio` | BigDecimal | Requerido, > 0 | Precio unitario |
| `stock` | Integer | Requerido, >= 0 | Cantidad en stock |
| `categoria` | String | Requerido | Categoría del producto |
| `proveedor` | String | Requerido | Proveedor del producto |
| `stockMinimo` | Integer | Requerido, > 0 | Stock mínimo para alertas |

## 📈 Características Especiales

### Alertas de Stock Bajo
```java
// Productos con stock <= stockMinimo
List<Producto> stockBajo = productos.stream()
    .filter(p -> p.getStock() <= p.getStockMinimo())
    .collect(Collectors.toList());
```

### Dashboard con Métricas
- **Total de productos**
- **Valor total del inventario**
- **Productos con stock bajo**
- **Productos por categoría**
- **Top proveedores**

### Filtros Avanzados
- Por categoría
- Por proveedor
- Por rango de precio
- Por nivel de stock
- Búsqueda de texto

### Reportes
- Inventario completo
- Productos con stock bajo
- Valor por categoría
- Productos por proveedor

## 🚀 Tiempo Estimado

- **Prototipo inicial**: 7 minutos
- **Iteraciones de diseño**: 18 minutos
- **Generación de código**: 12 minutos
- **Total**: ~37 minutos

¡Copia el prompt y comienza a generar tu sistema de inventario! 📦