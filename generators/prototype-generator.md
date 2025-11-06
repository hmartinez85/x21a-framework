# Generador de Prototipos - X21A Framework

## 🎨 Prompt para Generar Prototipos HTML Estáticos

### **Objetivo**
Generar prototipos HTML estáticos para validar diseños y estilos antes de implementar la funcionalidad completa.

## 📋 **Prompt Principal para Prototipos**

```
Usando el framework X21A de EJIE, genera un PROTOTIPO HTML estático para validar el diseño con estas especificaciones:

CONTEXTO: [DESCRIPCIÓN_DEL_DOMINIO]
ENTIDAD PRINCIPAL: [NOMBRE_ENTIDAD]
PROPÓSITO: Prototipo para validar estilos y UX antes de implementar backend

ESTRUCTURA REQUERIDA:
1. HTML5 estático (sin Thymeleaf)
2. Bootstrap 5.3.0 desde CDN
3. Font Awesome 6.0.0 desde CDN
4. CSS personalizado embebido
5. JavaScript básico para interacciones
6. Datos de ejemplo hardcodeados

COMPONENTES A INCLUIR:
1. HEADER:
   - Logo/título de la aplicación
   - Navegación principal
   - Breadcrumb
   - Botón acción principal

2. CARDS ESTADÍSTICAS:
   - 4 cards con métricas importantes
   - Iconos representativos
   - Colores diferenciados
   - Animaciones hover

3. FILTROS Y BÚSQUEDA:
   - Barra de búsqueda con icono
   - Filtros dropdown
   - Botones de acción (limpiar, exportar)

4. TABLA DE DATOS:
   - Header con checkbox "seleccionar todo"
   - Filas con datos de ejemplo (mínimo 10)
   - Estados visuales (badges, indicadores)
   - Botones de acción por fila
   - Responsive design

5. PAGINACIÓN:
   - Controles anterior/siguiente
   - Números de página
   - Información "mostrando X de Y"

6. MODAL CREAR/EDITAR:
   - Formulario completo con todos los campos
   - Validaciones visuales
   - Tabs si es necesario
   - Botones cancelar/guardar

TEMA VISUAL:
- Paleta de colores: [ESPECIFICAR_COLORES_SEGÚN_DOMINIO]
- Tipografía: Inter o similar profesional
- Espaciado: Generoso y consistente
- Sombras: Sutiles para profundidad
- Bordes: Redondeados suaves
- Animaciones: Transiciones suaves

DATOS DE EJEMPLO:
- Generar datos realistas para el dominio
- Mínimo 10-15 registros de ejemplo
- Diferentes estados/tipos para mostrar variedad
- Nombres, fechas, números coherentes

INTERACCIONES BÁSICAS:
- Hover effects en botones y cards
- Click en botones (solo alerts)
- Abrir/cerrar modal
- Cambio de tabs
- Selección de checkboxes
- Filtros básicos (solo visual)

RESPONSIVE:
- Mobile-first approach
- Breakpoints Bootstrap estándar
- Tabla responsive con scroll horizontal
- Cards apiladas en móvil
- Modal adaptado a pantalla

REQUISITOS TÉCNICOS:
- Un solo archivo HTML
- CSS embebido en <style>
- JavaScript embebido en <script>
- CDNs externos para librerías
- Comentarios explicativos
- Código limpio y organizado

Genera el prototipo HTML completo listo para abrir en navegador.
```

## 🏥 **Ejemplo: Prototipo Gabinete de Psicología**

```
Usando el framework X21A de EJIE, genera un PROTOTIPO HTML estático para validar el diseño con estas especificaciones:

CONTEXTO: Gabinete de Psicología - Gestión de Pacientes
ENTIDAD PRINCIPAL: Pacientes
PROPÓSITO: Validar diseño sanitario profesional antes de implementar backend

TEMA VISUAL SANITARIO:
- Colores primarios: Azul médico (#0066cc), Verde salud (#28a745)
- Colores secundarios: Gris claro (#f8f9fa), Blanco (#ffffff)
- Colores de estado: Rojo (#dc3545), Naranja (#fd7e14), Verde (#198754)
- Tipografía: Inter, sans-serif
- Iconos: Font Awesome médicos (fa-user-md, fa-heartbeat, fa-calendar-plus)

DATOS DE EJEMPLO REALISTAS:
- 12 pacientes con nombres españoles
- Edades variadas (25-70 años)
- DNIs válidos españoles
- Teléfonos formato español
- Estados: Activo/Inactivo
- Fechas de alta recientes
- Motivos consulta variados (ansiedad, depresión, terapia familiar)

ESTADÍSTICAS DE EJEMPLO:
- Total Activos: 156
- Nuevos Este Mes: 23
- Con Citas Pendientes: 45
- Inactivos: 12

CAMPOS FORMULARIO:
- Datos Personales: Nombre, Apellidos, DNI, Fecha Nacimiento
- Contacto: Teléfono, Email, Dirección, Ciudad, CP
- Información Clínica: Motivo Consulta, Observaciones Médicas
- Contacto Emergencia: Nombre, Teléfono

INTERACCIONES ESPECÍFICAS:
- Validación visual DNI español
- Cálculo automático de edad
- Filtros por estado (Todos/Activos/Inactivos)
- Búsqueda por nombre/apellidos/DNI
- Confirmación eliminación con SweetAlert2

CARACTERÍSTICAS SANITARIAS:
- Diseño limpio y profesional
- Colores que transmitan confianza
- Iconografía médica apropiada
- Espaciado generoso para legibilidad
- Accesibilidad (contraste, tamaños)

Genera el prototipo HTML completo con diseño sanitario profesional.
```

## 🎯 **Prompts por Dominio**

### **E-commerce**
```
TEMA VISUAL E-COMMERCE:
- Colores: Azul corporativo (#007bff), Verde compra (#28a745), Rojo oferta (#dc3545)
- Iconos: fa-shopping-cart, fa-credit-card, fa-truck, fa-star
- Datos ejemplo: Productos, precios, stock, categorías, valoraciones
- Características: Catálogo, carrito, checkout, reviews
```

### **Educación**
```
TEMA VISUAL EDUCATIVO:
- Colores: Azul académico (#004085), Verde aprobado (#28a745), Naranja (#fd7e14)
- Iconos: fa-graduation-cap, fa-book, fa-chalkboard, fa-users
- Datos ejemplo: Estudiantes, cursos, notas, asistencia
- Características: Dashboard académico, calendario, evaluaciones
```

### **Recursos Humanos**
```
TEMA VISUAL CORPORATIVO:
- Colores: Azul corporativo (#0d6efd), Gris profesional (#6c757d), Verde (#198754)
- Iconos: fa-users, fa-briefcase, fa-calendar, fa-chart-line
- Datos ejemplo: Empleados, departamentos, nóminas, vacaciones
- Características: Organigrama, gestión personal, reportes
```

### **Inventario/Almacén**
```
TEMA VISUAL LOGÍSTICO:
- Colores: Azul industrial (#0066cc), Naranja (#fd7e14), Verde stock (#28a745)
- Iconos: fa-boxes, fa-warehouse, fa-truck, fa-barcode
- Datos ejemplo: Productos, stock, movimientos, proveedores
- Características: Control stock, alertas, trazabilidad
```

## 🔄 **Flujo de Prototipado**

### **1. Generación Inicial**
```bash
# Usar prompt específico del dominio
# Obtener HTML estático completo
# Abrir en navegador para validar
```

### **2. Iteración de Diseño**
```
PROMPT DE MEJORA:
Mejora el prototipo anterior con estos cambios:

PROBLEMAS IDENTIFICADOS:
- [Lista de problemas visuales/UX]

MEJORAS SOLICITADAS:
- [Cambios específicos de diseño]
- [Nuevos componentes necesarios]
- [Ajustes de colores/tipografía]

NUEVOS REQUISITOS:
- [Funcionalidades adicionales]
- [Cambios en layout]
- [Optimizaciones responsive]

Genera la versión mejorada manteniendo la estructura base.
```

### **3. Validación Final**
```
CHECKLIST PROTOTIPO:
□ Diseño coherente con el dominio
□ Colores apropiados y accesibles
□ Tipografía legible y profesional
□ Iconografía consistente
□ Responsive en móvil/tablet/desktop
□ Interacciones básicas funcionando
□ Datos de ejemplo realistas
□ Formularios completos
□ Estados visuales claros
□ Navegación intuitiva
```

## 📱 **Responsive Testing**

### **Prompt para Optimización Mobile**
```
Optimiza el prototipo anterior para dispositivos móviles con estos ajustes:

BREAKPOINTS:
- Mobile: < 768px
- Tablet: 768px - 1024px  
- Desktop: > 1024px

AJUSTES MOBILE:
- Cards estadísticas: 2x2 grid en lugar de 1x4
- Tabla: Scroll horizontal con columnas esenciales
- Modal: Pantalla completa en móvil
- Botones: Tamaño mínimo 44px para touch
- Espaciado: Reducido pero manteniendo usabilidad

AJUSTES TABLET:
- Layout híbrido entre móvil y desktop
- Sidebar colapsable
- Modales centrados
- Navegación adaptada

Genera la versión responsive optimizada.
```

## 🎨 **Biblioteca de Estilos**

### **CSS Variables Base**
```css
:root {
  /* Colores primarios */
  --primary-color: #0066cc;
  --secondary-color: #6c757d;
  --success-color: #28a745;
  --danger-color: #dc3545;
  --warning-color: #ffc107;
  --info-color: #17a2b8;
  
  /* Colores neutros */
  --light-color: #f8f9fa;
  --dark-color: #343a40;
  --white-color: #ffffff;
  
  /* Tipografía */
  --font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
  --font-size-base: 1rem;
  --line-height-base: 1.5;
  
  /* Espaciado */
  --spacing-xs: 0.25rem;
  --spacing-sm: 0.5rem;
  --spacing-md: 1rem;
  --spacing-lg: 1.5rem;
  --spacing-xl: 3rem;
  
  /* Bordes */
  --border-radius: 0.375rem;
  --border-width: 1px;
  
  /* Sombras */
  --shadow-sm: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
  --shadow-md: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
  --shadow-lg: 0 1rem 3rem rgba(0, 0, 0, 0.175);
}
```

Este generador de prototipos permite validar rápidamente diseños y estilos antes de implementar la funcionalidad completa, ahorrando tiempo en iteraciones de desarrollo.