# Guía Paso a Paso para Probar el Framework X21A con IA

## 🎯 **Objetivo**
Generar una aplicación completa de **Tienda de Libros** usando otra IA para validar el framework X21A.

## 📋 **PASO 1: Preparar el Entorno**

### **1.1 Copiar el Skeleton**
```bash
# Navegar al directorio base
cd C:\app_ejie\tomcat\tomcat9\

# Copiar skeleton
cp -r x21a-skeleton libreria-app

# Entrar al nuevo proyecto
cd libreria-app
```

### **1.2 Personalizar el Proyecto**
Editar `base-project/pom.xml`:
- Cambiar `<artifactId>x21a-skeleton-app</artifactId>` por `<artifactId>libreria-app</artifactId>`
- Cambiar `<name>X21A Skeleton Application</name>` por `<name>Librería Online</name>`

## 📝 **PASO 2: Prompts para Copiar y Pegar**

### **PROMPT 1: Análisis del Dominio**
```
Analiza el siguiente dominio de negocio y identifica las entidades principales:

DOMINIO: Tienda de Libros Online
- Gestión de libros con información bibliográfica completa
- Control de inventario y stock
- Gestión de categorías y géneros literarios
- Sistema de autores y editoriales
- Control de precios y ofertas
- Seguimiento de ventas

Identifica:
1. Entidades principales con sus atributos
2. Relaciones entre entidades
3. Reglas de negocio importantes
4. Casos de uso principales

Responde en formato estructurado.
```

**INSTRUCCIONES:**
1. Copia el prompt anterior
2. Pégalo en otra IA (ChatGPT, Claude, Gemini, etc.)
3. Guarda la respuesta en un archivo `analisis-dominio.txt`

---

### **PROMPT 2: Generar Prototipo HTML**
```
Usando el framework X21A de EJIE, genera un PROTOTIPO HTML estático para validar el diseño con estas especificaciones:

CONTEXTO: Tienda de Libros Online - Gestión de Libros
ENTIDAD PRINCIPAL: Libros
PROPÓSITO: Validar diseño comercial antes de implementar backend

ESTRUCTURA REQUERIDA:
1. HTML5 estático (sin Thymeleaf)
2. Bootstrap 5.3.0 desde CDN
3. Font Awesome 6.0.0 desde CDN
4. CSS personalizado embebido
5. JavaScript básico para interacciones
6. Datos de ejemplo hardcodeados

TEMA VISUAL COMERCIAL:
- Colores primarios: Azul librería (#1e3a8a), Verde éxito (#059669)
- Colores secundarios: Gris claro (#f1f5f9), Blanco (#ffffff)
- Colores de estado: Rojo (#dc2626), Naranja (#ea580c), Verde (#16a34a)
- Tipografía: Inter, sans-serif
- Iconos: Font Awesome libros (fa-book, fa-bookmark, fa-shopping-cart)

DATOS DE EJEMPLO REALISTAS:
- 15 libros con títulos reales españoles
- Autores conocidos españoles e internacionales
- ISBNs válidos
- Precios en euros (10€-45€)
- Stock variado (0-50 unidades)
- Estados: Disponible/Agotado/Próximamente
- Categorías: Novela, Ensayo, Poesía, Técnico, Infantil
- Fechas de publicación variadas

ESTADÍSTICAS DE EJEMPLO:
- Total Libros: 1,247
- Disponibles: 1,156
- Agotados: 67
- Próximamente: 24

COMPONENTES A INCLUIR:
1. HEADER:
   - Título "Librería Online - Gestión de Libros"
   - Breadcrumb: Inicio > Libros
   - Botón "Nuevo Libro"

2. CARDS ESTADÍSTICAS:
   - Total Libros (icono fa-book)
   - Disponibles (icono fa-check-circle, color verde)
   - Agotados (icono fa-times-circle, color rojo)
   - Próximamente (icono fa-clock, color naranja)

3. FILTROS Y BÚSQUEDA:
   - Búsqueda por título/autor/ISBN
   - Filtro por categoría
   - Filtro por estado
   - Botones limpiar y exportar

4. TABLA DE DATOS:
   - Columnas: ☑, ID, Portada (imagen pequeña), Título, Autor, ISBN, Categoría, Precio, Stock, Estado, Acciones
   - Mínimo 15 filas con datos realistas
   - Estados con badges coloreados
   - Botones: Editar (azul), Ver (info), Eliminar (rojo)

5. PAGINACIÓN:
   - Controles anterior/siguiente
   - Números de página (1,2,3...)
   - "Mostrando 15 de 1,247 libros"

6. MODAL CREAR/EDITAR:
   - Tabs: "Información Básica", "Detalles", "Inventario"
   - Campos: Título, Autor, ISBN, Editorial, Año, Categoría, Descripción, Precio, Stock, Estado
   - Validaciones visuales
   - Botones Cancelar/Guardar

CAMPOS FORMULARIO COMPLETO:
- Información Básica: Título, Autor, ISBN-13, Editorial
- Detalles: Año Publicación, Páginas, Idioma, Categoría, Descripción
- Inventario: Precio, Stock, Estado, Fecha Disponibilidad

INTERACCIONES ESPECÍFICAS:
- Validación ISBN-13 visual
- Cálculo automático de disponibilidad
- Filtros por categoría y estado
- Búsqueda por título/autor/ISBN
- Confirmación eliminación con SweetAlert2
- Preview de portada en modal

CARACTERÍSTICAS COMERCIALES:
- Diseño atractivo para e-commerce
- Colores que transmitan confianza
- Iconografía de libros apropiada
- Espaciado comercial profesional
- Precios destacados visualmente

RESPONSIVE:
- Mobile-first approach
- Cards 2x2 en móvil
- Tabla scroll horizontal
- Modal pantalla completa en móvil
- Botones touch-friendly

REQUISITOS TÉCNICOS:
- Un solo archivo HTML
- CSS embebido en <style>
- JavaScript embebido en <script>
- CDNs externos para librerías
- Comentarios explicativos
- Código limpio y organizado

Genera el prototipo HTML completo listo para abrir en navegador con diseño comercial profesional.
```

**INSTRUCCIONES:**
1. Copia el prompt anterior completo
2. Pégalo en la IA
3. Guarda la respuesta como `prototipo-libreria.html`
4. Abre el archivo en tu navegador para validar el diseño
5. Toma capturas de pantalla del resultado

---

### **PROMPT 3: Generar Entidad Libro**
```
Usando el framework X21A de EJIE, genera una entidad JPA para LIBROS con estas especificaciones:

CONTEXTO: Tienda de Libros Online
ENTIDAD: Libro
TABLA: LIBROS

CAMPOS REQUERIDOS:
- titulo: String, obligatorio, máximo 200 caracteres
- autor: String, obligatorio, máximo 150 caracteres
- isbn: String, obligatorio, formato ISBN-13, único
- editorial: String, obligatorio, máximo 100 caracteres
- anoPublicacion: Integer, obligatorio, entre 1900 y año actual
- numeroPaginas: Integer, obligatorio, mayor que 0
- idioma: String, obligatorio, máximo 50 caracteres
- categoria: Enum (NOVELA, ENSAYO, POESIA, TECNICO, INFANTIL, BIOGRAFIA, HISTORIA, CIENCIA)
- descripcion: String, máximo 1000 caracteres
- precio: BigDecimal, obligatorio, mayor que 0, máximo 999.99
- stock: Integer, obligatorio, mayor o igual a 0
- estadoLibro: Enum (DISPONIBLE, AGOTADO, PROXIMAMENTE, DESCATALOGADO)
- fechaDisponibilidad: Date, opcional
- portadaUrl: String, máximo 500 caracteres
- peso: BigDecimal, en gramos, opcional
- dimensiones: String, formato "alto x ancho x grosor cm", opcional

VALIDACIONES:
- ISBN: regex "^978[0-9]{10}$" (ISBN-13)
- Precio: @DecimalMin("0.01") @DecimalMax("999.99")
- Stock: @Min(0) @Max(9999)
- Año publicación: @Min(1900) @Max(año actual)
- Páginas: @Min(1) @Max(9999)
- Título: @NotBlank @Size(max = 200)
- Autor: @NotBlank @Size(max = 150)

RELACIONES:
- Ninguna por ahora (entidad independiente)

REQUISITOS TÉCNICOS:
- Extiende BaseEntity del framework X21A
- Usa secuencia SEQ_LIBROS
- Enums CategoriaLibro y EstadoLibro como clases separadas
- Anotaciones Jackson para JSON con formato dd/MM/yyyy para fechas
- Validaciones Bean Validation completas
- Constructor vacío y constructor con parámetros principales
- Métodos equals, hashCode, toString
- Método isDisponible() que retorna true si estado es DISPONIBLE y stock > 0
- Método getPrecioFormateado() que retorna precio con símbolo €
- Método getDescripcionCorta() que retorna primeros 100 caracteres de descripción

MÉTODOS DE NEGOCIO:
- isDisponible(): boolean - verifica disponibilidad
- isAgotado(): boolean - verifica si está agotado
- canBeSold(): boolean - verifica si se puede vender
- reduceStock(int cantidad): void - reduce stock
- increaseStock(int cantidad): void - aumenta stock

Genera el código Java completo con los enums incluidos siguiendo los patrones X21A.
```

**INSTRUCCIONES:**
1. Copia el prompt anterior
2. Pégalo en la IA
3. Guarda la respuesta como `Libro.java`
4. Guarda también los enums generados como archivos separados

---

### **PROMPT 4: Generar Repository**
```
Usando el framework X21A de EJIE, genera un Repository JPA para la entidad Libro con estas especificaciones:

FUNCIONALIDADES REQUERIDAS:
- CRUD básico heredado de JpaRepository<Libro, Long>
- findByTituloContainingIgnoreCase: búsqueda por título
- findByAutorContainingIgnoreCase: búsqueda por autor
- findByIsbn: búsqueda exacta por ISBN
- findByCategoria: filtrar por categoría
- findByEstadoLibro: filtrar por estado
- findByPrecioBetween: filtrar por rango de precios
- findByStockGreaterThan: libros con stock mayor a X
- findByStockEquals: libros con stock exacto (para agotados = 0)
- countByCategoria: contar libros por categoría
- countByEstadoLibro: contar libros por estado

CONSULTAS PERSONALIZADAS JPQL:
- Libros más caros:
  @Query("SELECT l FROM Libro l ORDER BY l.precio DESC")
- Libros por año de publicación:
  @Query("SELECT l FROM Libro l WHERE l.anoPublicacion = :ano ORDER BY l.titulo")
- Búsqueda combinada por texto:
  @Query("SELECT l FROM Libro l WHERE LOWER(l.titulo) LIKE LOWER(CONCAT('%', :texto, '%')) OR LOWER(l.autor) LIKE LOWER(CONCAT('%', :texto, '%')) OR l.isbn LIKE CONCAT('%', :texto, '%')")
- Libros disponibles por categoría:
  @Query("SELECT l FROM Libro l WHERE l.categoria = :categoria AND l.estadoLibro = 'DISPONIBLE' AND l.stock > 0")
- Libros próximos a agotarse:
  @Query("SELECT l FROM Libro l WHERE l.stock <= :stockMinimo AND l.estadoLibro = 'DISPONIBLE'")
- Top libros por precio en categoría:
  @Query("SELECT l FROM Libro l WHERE l.categoria = :categoria ORDER BY l.precio DESC")

CONSULTAS DE ESTADÍSTICAS:
- @Query("SELECT COUNT(l) FROM Libro l WHERE l.estadoLibro = 'DISPONIBLE'")
  Long countDisponibles();
- @Query("SELECT COUNT(l) FROM Libro l WHERE l.stock = 0")
  Long countAgotados();
- @Query("SELECT AVG(l.precio) FROM Libro l WHERE l.estadoLibro = 'DISPONIBLE'")
  BigDecimal getAveragePrice();
- @Query("SELECT l.categoria, COUNT(l) FROM Libro l GROUP BY l.categoria")
  List<Object[]> getCountByCategory();

PAGINACIÓN:
- Todas las búsquedas deben soportar Pageable
- Ordenación por defecto: titulo ASC
- Métodos específicos con ordenación por precio, fecha, stock

REQUISITOS TÉCNICOS:
- Interface que extiende JpaRepository<Libro, Long>
- Anotación @Repository
- Parámetros con @Param para consultas JPQL
- Métodos con Page<Libro> para paginación
- Métodos con List<Libro> para listas simples
- Consultas de estadísticas que retornen tipos apropiados

Genera el código Java completo siguiendo los patrones X21A.
```

**INSTRUCCIONES:**
1. Copia el prompt anterior
2. Pégalo en la IA
3. Guarda la respuesta como `LibroRepository.java`

---

### **PROMPT 5: Generar Service**
```
Usando el framework X21A de EJIE, genera un Service para la entidad Libro con estas especificaciones:

FUNCIONALIDADES REQUERIDAS:
- findAll(Pageable): listado paginado
- findById(Long): buscar por ID con Optional
- save(Libro): crear/actualizar con validaciones
- deleteById(Long): eliminar con validaciones de negocio
- findByTitleOrAuthor(String, Pageable): búsqueda combinada paginada
- findByCategory(CategoriaLibro, Pageable): filtrar por categoría
- findByStatus(EstadoLibro, Pageable): filtrar por estado
- findByPriceRange(BigDecimal, BigDecimal, Pageable): filtrar por precio
- getEstadisticas(): estadísticas generales
- validateUniqueIsbn(String, Long): validar ISBN único
- updateStock(Long, Integer): actualizar stock
- markAsAgotado(Long): marcar como agotado
- markAsDisponible(Long): marcar como disponible

REGLAS DE NEGOCIO:
- No permitir ISBN duplicados (excepto en actualización del mismo libro)
- Validar formato ISBN-13 con algoritmo de verificación
- Al guardar, si stock = 0, cambiar estado a AGOTADO automáticamente
- Al actualizar stock > 0, cambiar estado a DISPONIBLE si estaba AGOTADO
- No permitir eliminar libros que han tenido ventas (simulado con validación)
- Validar que el año de publicación no sea futuro
- Precio debe ser mayor que 0
- Stock no puede ser negativo
- Logging de operaciones importantes (crear, actualizar, eliminar, cambios de stock)

MANEJO DE ERRORES:
- LibroNotFoundException para ID no encontrado
- IsbnAlreadyExistsException para ISBN duplicado
- InvalidStockException para stock negativo
- InvalidPriceException para precio inválido
- LibroHasSalesException al intentar eliminar con ventas
- ValidationException para errores de validación

ESTADÍSTICAS:
- Total libros
- Libros disponibles
- Libros agotados
- Próximamente
- Precio promedio
- Categoría con más libros
- Stock total valorado

MÉTODOS DE STOCK:
- reduceStock(Long id, Integer cantidad): reducir stock
- increaseStock(Long id, Integer cantidad): aumentar stock
- checkLowStock(Integer minimo): libros con stock bajo
- getStockValue(): valor total del inventario

REQUISITOS TÉCNICOS:
- Anotación @Service
- @Transactional en métodos que modifican datos
- @Transactional(readOnly = true) en consultas
- Inyección de LibroRepository con @Autowired
- Logger SLF4J para auditoría
- Validaciones con @Valid en parámetros
- Manejo de excepciones apropiado

Genera el código Java completo con excepciones personalizadas siguiendo los patrones X21A.
```

**INSTRUCCIONES:**
1. Copia el prompt anterior
2. Pégalo en la IA
3. Guarda la respuesta como `LibroService.java`
4. Guarda también las excepciones personalizadas como archivos separados

---

### **PROMPT 6: Generar Controller**
```
Usando el framework X21A de EJIE, genera un Controller completo para la entidad Libro con estas especificaciones:

ENDPOINTS REQUERIDOS:
- GET /libros/list: vista principal Thymeleaf con listado paginado
- GET /libros/{id}: obtener libro por ID (ResponseEntity<Libro>)
- POST /libros/add: crear nuevo libro (ResponseEntity<Libro>)
- PUT /libros/update/{id}: actualizar libro (ResponseEntity<Libro>)
- DELETE /libros/delete/{id}: eliminar libro (ResponseEntity<Map<String, String>>)
- GET /libros/search: búsqueda con paginación (ResponseEntity<Map<String, Object>>)
- GET /libros/page: paginación (ResponseEntity<Map<String, Object>>)
- GET /libros/stats: estadísticas (ResponseEntity<Map<String, Object>>)
- POST /libros/updateStock/{id}: actualizar stock
- GET /libros/category/{categoria}: filtrar por categoría
- GET /libros/lowStock: libros con stock bajo

VISTA THYMELEAF (/libros/list):
- Model con atributos: libros (Page), currentPage, totalPages, totalElements, size
- Estadísticas: totalCount, disponibles, agotados, proximamente
- Listas para filtros: categorias, estados
- Título: "Gestión de Libros - Librería Online"

FUNCIONALIDADES API:
- Paginación completa con metadatos
- Búsqueda por título, autor, ISBN
- Filtros por categoría, estado, rango de precios
- Manejo de errores con ResponseEntity apropiado
- Validaciones con @Valid
- Logging de operaciones importantes
- Control de stock con validaciones

MANEJO DE ERRORES:
- 404 para libro no encontrado
- 400 para errores de validación
- 409 para conflictos (ISBN duplicado)
- 422 para reglas de negocio (stock negativo, precio inválido)
- 423 para libros con ventas (no se pueden eliminar)
- Respuestas JSON consistentes con mensaje de error

ENDPOINTS ESPECÍFICOS LIBRERÍA:
- GET /libros/bestsellers: libros más vendidos (simulado)
- GET /libros/newReleases: novedades (últimos 30 días)
- GET /libros/offers: libros en oferta (simulado)
- POST /libros/applyDiscount/{id}: aplicar descuento
- GET /libros/inventory/value: valor total del inventario
- GET /libros/reports/category: reporte por categorías

SEGURIDAD Y VALIDACIÓN:
- @Valid en RequestBody
- Validación de IDs positivos
- Sanitización de parámetros de búsqueda
- Validación de rangos de precios
- Logging de accesos y modificaciones
- Control de stock en tiempo real

REQUISITOS TÉCNICOS:
- Anotación @Controller
- @RequestMapping("/libros")
- Inyección de LibroService con @Autowired
- ResponseEntity para APIs JSON
- Model para vista Thymeleaf
- @ExceptionHandler para manejo de errores
- URLs con contexto /libreria-app

Genera el código Java completo con manejo de errores robusto y funcionalidades específicas de librería siguiendo los patrones X21A.
```

**INSTRUCCIONES:**
1. Copia el prompt anterior
2. Pégalo en la IA
3. Guarda la respuesta como `LibroController.java`

---

### **PROMPT 7: Generar Vista Thymeleaf**
```
Usando el framework X21A de EJIE, genera una vista Thymeleaf completa para gestión de LIBROS con estas especificaciones:

CONTEXTO: Librería Online (/libreria-app)
ARCHIVO: libros/list.html
TÍTULO: Gestión de Libros - Librería Online

ESTRUCTURA HTML:
1. DOCTYPE html5 con namespace Thymeleaf
2. Head con meta viewport, título dinámico, Bootstrap 5.3.0, Font Awesome 6.0.0
3. CSS personalizado para tema comercial
4. Body con container-fluid

COMPONENTES REQUERIDOS:
1. HEADER:
   - Título con icono fas fa-book
   - Botón "Nuevo Libro" (btn-primary) que abre modal
   - Breadcrumb: Inicio > Libros

2. CARDS ESTADÍSTICAS (row con 4 col-md-3):
   - Total Libros: icono fas fa-book, color azul
   - Disponibles: icono fas fa-check-circle, color verde
   - Agotados: icono fas fa-times-circle, color rojo
   - Próximamente: icono fas fa-clock, color naranja

3. FILTROS (card mb-4):
   - Input búsqueda con icono fas fa-search
   - Select categoría: Todas/Novela/Ensayo/Poesía/Técnico/Infantil
   - Select estado: Todos/Disponible/Agotado/Próximamente
   - Range precio: Min/Max
   - Botón "Limpiar" con icono fas fa-times

4. TABLA RESPONSIVE:
   - Thead table-dark con checkbox "Seleccionar todo"
   - Columnas: ☑, ID, Portada, Título, Autor, ISBN, Categoría, Precio, Stock, Estado, Acciones
   - Tbody con th:each para libros
   - Estados con badges: bg-success (Disponible), bg-danger (Agotado), bg-warning (Próximamente)
   - Precios formateados con símbolo €
   - Stock con indicador visual (rojo si = 0)
   - Botones acción: Editar (btn-primary), Ver (btn-info), Eliminar (btn-danger)

5. PAGINACIÓN:
   - nav con ul.pagination justify-content-center
   - Botones Anterior/Siguiente
   - Números de página dinámicos
   - Información "Mostrando X de Y libros"

6. MODAL CREAR/EDITAR:
   - Modal-xl con formulario en tabs
   - Tab 1 "Información Básica": Título, Autor, ISBN, Editorial, Año
   - Tab 2 "Detalles": Páginas, Idioma, Categoría, Descripción
   - Tab 3 "Inventario": Precio, Stock, Estado, Fecha Disponibilidad
   - Validaciones HTML5 (required, pattern, min, max)
   - Preview de portada si hay URL
   - Botones Cancelar/Guardar

CAMPOS FORMULARIO COMPLETO:
- Información Básica: Título*, Autor*, ISBN-13*, Editorial*, Año Publicación*
- Detalles: Número Páginas*, Idioma*, Categoría*, Descripción, Portada URL
- Inventario: Precio*, Stock*, Estado*, Fecha Disponibilidad, Peso, Dimensiones

TEMA COMERCIAL LIBRERÍA:
- Colores: azul librería (#1e3a8a), verde éxito (#059669), rojo (#dc2626)
- Iconos de libros y comercio
- Cards con efecto hover
- Precios destacados
- Stock visual (verde >10, amarillo 1-10, rojo 0)

CARACTERÍSTICAS ESPECÍFICAS:
- Portadas de libros como imágenes pequeñas (50x70px)
- Precios formateados: "€ 24,95"
- ISBN con formato: "978-84-XXXX-XXX-X"
- Categorías con colores distintivos
- Stock con alertas visuales
- Descripción truncada con "..."

VALIDACIONES VISUALES:
- ISBN-13: pattern y validación JavaScript
- Precio: min="0.01" max="999.99" step="0.01"
- Stock: min="0" max="9999"
- Año: min="1900" max="2024"
- Título y Autor: required, maxlength

RESPONSIVE ESPECÍFICO:
- Tabla: scroll horizontal en móvil
- Portadas: ocultar en móvil
- Precios: destacar en móvil
- Modal: tabs verticales en móvil
- Filtros: colapsar en móvil

REQUISITOS TÉCNICOS:
- Thymeleaf expressions: th:text, th:each, th:if, th:href, th:src
- Atributos del modelo: libros, estadísticas, categorias, estados
- Formateo de precios: th:text="${#numbers.formatCurrency(libro.precio)}"
- Formateo de fechas: th:text="${#dates.format(libro.fechaDisponibilidad, 'dd/MM/yyyy')}"
- Condicionales para stock: th:class="${libro.stock == 0} ? 'text-danger' : 'text-success'"
- JavaScript externo: /libreria-app/js/libros.js
- CSS externo: /libreria-app/css/libros.css

Genera el código HTML completo con Thymeleaf siguiendo los patrones X21A y diseño comercial de librería profesional.
```

**INSTRUCCIONES:**
1. Copia el prompt anterior
2. Pégalo en la IA
3. Guarda la respuesta como `libros-list.html`

---

### **PROMPT 8: Generar JavaScript**
```
Usando el framework X21A de EJIE, genera el JavaScript completo para gestión de LIBROS con estas especificaciones:

ARCHIVO: /libreria-app/js/libros.js
CONTEXTO: Librería Online

VARIABLES GLOBALES:
- currentEditId: null (ID del libro en edición)
- currentPage: 0 (página actual)
- pageSize: 10 (registros por página)
- totalPages: 1 (total de páginas)
- isSearching: false (estado de búsqueda)
- currentSearchTerm: '' (término de búsqueda actual)
- currentCategory: '' (categoría filtrada)
- currentStatus: '' (estado filtrado)
- priceMin: null (precio mínimo)
- priceMax: null (precio máximo)

FUNCIONES PRINCIPALES:
1. loadPage(page): cargar página con paginación
2. searchLibros(page = 0): búsqueda con filtros múltiples
3. saveLibro(): crear/actualizar libro con validaciones
4. editLibro(id): cargar datos para editar en modal
5. deleteLibro(id): eliminar con confirmación SweetAlert2
6. updateStock(id, newStock): actualizar stock específico
7. applyFilters(): aplicar filtros combinados
8. clearFilters(): limpiar todos los filtros
9. updatePagination(): actualizar controles de paginación
10. updateTableBody(libros): actualizar filas de tabla
11. updateStats(stats): actualizar cards de estadísticas
12. validateForm(): validaciones client-side específicas

VALIDACIONES CLIENT-SIDE ESPECÍFICAS:
- validateISBN13(isbn): algoritmo completo ISBN-13 con dígito verificador
- validatePrice(price): formato precio válido (0.01-999.99)
- validateStock(stock): stock no negativo (0-9999)
- validateYear(year): año entre 1900 y actual
- validatePages(pages): número páginas válido (1-9999)
- validateRequired(fields): campos obligatorios específicos
- validateUrl(url): validar URL de portada

CARACTERÍSTICAS AJAX ESPECÍFICAS:
- URLs con contexto /libreria-app/libros/
- Headers: 'Content-Type': 'application/json'
- Manejo de errores específicos de librería
- Loading states con spinners en botones
- Timeout de 15 segundos para imágenes
- Retry automático en fallos de red
- Cache de categorías y estados

FEEDBACK VISUAL ESPECÍFICO:
- SweetAlert2 para confirmaciones con iconos de libros
- Loading spinners en operaciones de stock
- Preview de portada en tiempo real
- Indicadores de stock (colores: verde >10, amarillo 1-10, rojo 0)
- Formateo de precios en tiempo real
- Validación ISBN con feedback inmediato
- Animaciones suaves en filtros

EVENTOS ESPECÍFICOS:
- DOMContentLoaded: inicialización y carga de categorías
- Form submit: validación completa antes de envío
- Modal events: reset formulario y preview
- Input events: búsqueda en tiempo real (debounce 500ms)
- Change events: filtros automáticos
- Price range: validación min/max
- ISBN input: formateo automático
- Stock input: validación inmediata

FUNCIONES UTILIDAD ESPECÍFICAS:
- formatPrice(price): formato "€ 24,95"
- formatISBN(isbn): formato "978-84-XXXX-XXX-X"
- calculateStockStatus(stock): estado visual del stock
- previewCover(url): preview de portada
- validateISBNChecksum(isbn): validar dígito verificador
- formatCategory(categoria): formato visual categoría
- getStockColor(stock): color según nivel de stock
- truncateDescription(desc, length): descripción corta

MANEJO DE ERRORES ESPECÍFICO:
- Network errors: "Error de conexión con el servidor"
- 404 errors: "Libro no encontrado"
- 409 errors: "ISBN ya existe en el catálogo"
- 422 errors: "Stock insuficiente" / "Precio inválido"
- 423 errors: "No se puede eliminar, tiene ventas asociadas"
- Validation errors: mostrar en campos específicos con iconos
- Image errors: placeholder para portadas no encontradas

FUNCIONALIDADES ESPECÍFICAS LIBRERÍA:
- Búsqueda inteligente: título, autor, ISBN simultáneo
- Filtros combinados: categoría + estado + precio
- Stock management: alertas de stock bajo
- Price validation: rangos comerciales
- ISBN formatting: automático mientras escribe
- Cover preview: carga asíncrona de imágenes
- Category colors: colores distintivos por categoría
- Inventory alerts: notificaciones de stock crítico

REQUISITOS TÉCNICOS:
- ES6+ syntax (const, let, arrow functions, async/await)
- Fetch API para AJAX con error handling robusto
- SweetAlert2 para alertas temáticas
- Bootstrap 5 JavaScript para modales y tabs
- Debounce para búsqueda (500ms)
- LocalStorage para filtros preferidos
- Image lazy loading para portadas
- Number formatting para precios

Genera el código JavaScript completo con manejo de errores específico de librería y UX comercial profesional siguiendo los patrones X21A.
```

**INSTRUCCIONES:**
1. Copia el prompt anterior
2. Pégalo en la IA
3. Guarda la respuesta como `libros.js`

---

---

## 🎨 **PASO 2.5: Refinamiento Iterativo del Diseño**

### **ITERACIÓN 1: Mejoras Básicas**
```
Analiza el prototipo HTML anterior y mejóralo con estos criterios:

ANÁLISIS REQUERIDO:
1. Identifica problemas de UX/UI
2. Evalúa la coherencia visual
3. Revisa la usabilidad en móvil
4. Analiza la accesibilidad
5. Verifica la profesionalidad del diseño

MEJORAS ESPECÍFICAS A APLICAR:
- Espaciado más profesional y consistente
- Jerarquía visual mejorada (títulos, subtítulos, contenido)
- Colores más sofisticados y accesibles
- Animaciones más suaves y elegantes
- Microinteracciones que mejoren la UX
- Tipografía más refinada
- Iconografía más coherente
- Estados hover más atractivos

PROBLEMAS COMUNES A CORREGIR:
- Cards demasiado básicas → Añadir gradientes sutiles y sombras
- Tabla monótona → Mejorar alternancia de filas y hover
- Modal simple → Añadir animaciones de entrada/salida
- Botones planos → Añadir efectos de profundidad
- Colores básicos → Paleta más sofisticada
- Espaciado irregular → Sistema de espaciado consistente

NUEVAS CARACTERÍSTICAS A AÑADIR:
- Loading skeletons para mejor percepción de velocidad
- Tooltips informativos en iconos
- Breadcrumbs más visuales
- Indicadores de progreso en formularios
- Feedback visual mejorado (success, error, warning)
- Animaciones de transición entre estados
- Micro-animaciones en botones y cards

Genera la versión mejorada del prototipo HTML manteniendo la funcionalidad pero elevando significativamente la calidad visual y UX.
```

**INSTRUCCIONES:**
1. Copia el prompt anterior
2. Pégalo en la IA junto con el prototipo generado anteriormente
3. Guarda la respuesta como `prototipo-libreria-v2.html`
4. **CHECKPOINT 1**: Abre el archivo en tu navegador
5. **VALIDACIÓN REQUERIDA**: Compara visualmente con la versión anterior
6. **DECISIÓN**: ¿Estás satisfecho con las mejoras?
   - ✅ **SÍ** → Continúa con Iteración 2
   - ❌ **NO** → Repite Iteración 1 con feedback específico:

**PROMPT DE FEEDBACK (si no estás satisfecho):**
```
El prototipo mejorado tiene estos problemas específicos:
[LISTA TUS PROBLEMAS ESPECÍFICOS]

Mejoras adicionales requeridas:
[LISTA LAS MEJORAS QUE QUIERES VER]

Elementos que SÍ me gustan y deben mantenerse:
[LISTA LO QUE ESTÁ BIEN]

Genera una nueva versión corrigiendo estos puntos específicos.
```

---

### **ITERACIÓN 2: Refinamiento Avanzado**
```
Toma el prototipo mejorado anterior y aplica estos refinamientos avanzados:

DISEÑO VISUAL AVANZADO:
- Sistema de colores más sofisticado con variables CSS
- Gradientes sutiles en cards y botones
- Sombras más realistas y estratificadas
- Bordes y esquinas más refinados
- Tipografía con mejor jerarquía (font-weight, line-height)

ANIMACIONES Y TRANSICIONES:
- Animaciones de entrada escalonadas para cards
- Transiciones suaves en hover states
- Loading states con spinners elegantes
- Animaciones de modal más cinematográficas
- Efectos sutiles de elevación

MICROINTERACCIONES:
- Botones con efecto ripple
- Cards que se elevan al hover
- Inputs con animaciones de focus
- Checkboxes con animaciones custom
- Progress bars animadas

COMPONENTES AVANZADOS:
- Dropdown menus más elegantes
- Tooltips con animaciones
- Badges con efectos de pulso
- Alerts con iconos animados
- Skeleton loaders para contenido

UX MEJORADA:
- Feedback inmediato en todas las acciones
- Estados de carga más informativos
- Mensajes de error más amigables
- Confirmaciones más elegantes
- Navegación más intuitiva

ACCESIBILIDAD:
- Contraste mejorado en todos los elementos
- Focus states más visibles
- Aria labels apropiados
- Navegación por teclado optimizada

Genera el prototipo refinado con estos elementos avanzados.
```

**INSTRUCCIONES:**
1. Copia el prompt anterior
2. Pégalo en la IA junto con el prototipo v2
3. Guarda la respuesta como `prototipo-libreria-v3.html`
4. **CHECKPOINT 2**: Abre el archivo en tu navegador
5. **VALIDACIÓN REQUERIDA**: Evalúa el refinamiento avanzado
6. **DECISIÓN**: ¿El diseño está listo para producción?
   - ✅ **SÍ** → Renombra a `prototipo-libreria-final.html` y continúa
   - ❌ **NO** → Aplica refinamientos adicionales:

**PROMPT DE REFINAMIENTO ADICIONAL (si no estás satisfecho):**
```
El prototipo refinado necesita estos ajustes finales:
[LISTA AJUSTES ESPECÍFICOS]

Elementos que deben mejorarse:
[DETALLES ESPECÍFICOS]

Nivel de profesionalidad objetivo:
[DESCRIBE EL NIVEL QUE BUSCAS: corporativo, startup, premium, etc.]

Referencias visuales:
[SI TIENES REFERENCIAS, DESCRÍBELAS]

Genera la versión final con estos ajustes específicos.
```

---

### **PROPAGACIÓN AL CÓDIGO: Vista Thymeleaf Final**
```
Genera la vista Thymeleaf final basándote EXACTAMENTE en el prototipo HTML refinado:

INSTRUCCIONES ESPECÍFICAS:
1. Usa el prototipo HTML final como referencia EXACTA para el diseño
2. Convierte el HTML estático a Thymeleaf dinámico
3. Mantén TODOS los estilos CSS del prototipo
4. Conserva TODAS las animaciones y efectos
5. Adapta el JavaScript para trabajar con datos reales
6. Usa las mismas clases CSS y estructura HTML

CONVERSIONES REQUERIDAS:
- Datos hardcodeados → Expresiones Thymeleaf (th:text, th:each)
- Estilos embebidos → Referencias a /libreria-app/css/libros.css
- JavaScript embebido → Referencia a /libreria-app/js/libros.js
- URLs estáticas → URLs con contexto /libreria-app

ELEMENTOS A MANTENER EXACTAMENTE:
- Toda la estructura HTML
- Todos los estilos CSS (mover a archivo externo)
- Todas las animaciones
- Todos los efectos visuales
- Toda la funcionalidad JavaScript (adaptar para AJAX)

EXPRESIONES THYMELEAF REQUERIDAS:
- th:each="libro : ${libros}" para la tabla
- th:text="${libro.titulo}" para datos dinámicos
- th:if="${libro.stock == 0}" para condicionales
- th:class="${libro.disponible} ? 'text-success' : 'text-danger'" para estilos dinámicos
- th:href="@{/libreria-app/libros/edit/{id}(id=${libro.id})}" para enlaces

El resultado debe verse IDÉNTICO al prototipo pero funcionando con datos reales del backend.
```

**INSTRUCCIONES:**
1. **CHECKPOINT 3**: Confirma que tienes `prototipo-libreria-final.html` aprobado
2. **VALIDACIÓN REQUERIDA**: ¿Estás 100% satisfecho con el diseño final?
   - ✅ **SÍ** → Continúa con la propagación al código
   - ❌ **NO** → Vuelve a refinar el prototipo

3. **SOLO SI ESTÁS SATISFECHO**: Copia el prompt anterior
4. Pégalo en la IA junto con el prototipo final APROBADO
5. Guarda la respuesta como `libros-list-final.html`
6. Extrae el CSS a un archivo `libros.css` separado
7. Extrae el JavaScript a un archivo `libros-final.js` separado

**CHECKPOINT 4**: Validación Final
- Abre `libros-list-final.html` en navegador
- Compara lado a lado con `prototipo-libreria-final.html`
- ¿Son visualmente idénticos?
  - ✅ **SÍ** → ¡Proceso completado!
  - ❌ **NO** → Corrige las diferencias con este prompt:

**PROMPT DE CORRECCIÓN:**
```
La vista Thymeleaf no es idéntica al prototipo. Diferencias encontradas:
[LISTA LAS DIFERENCIAS ESPECÍFICAS]

Corrige la vista Thymeleaf para que sea EXACTAMENTE igual al prototipo HTML.
```

---

## 📊 **PASO 3: Validación y Pruebas**

### **3.1 Checklist de Archivos Generados**
Verifica que tienes estos archivos:

**Análisis y Prototipos:**
- [ ] `analisis-dominio.txt`
- [ ] `prototipo-libreria.html` (versión inicial)
- [ ] `prototipo-libreria-v2.html` (primera mejora)
- [ ] `prototipo-libreria-final.html` (versión refinada final)

**Backend Java:**
- [ ] `Libro.java`
- [ ] `CategoriaLibro.java` (enum)
- [ ] `EstadoLibro.java` (enum)
- [ ] `LibroRepository.java`
- [ ] `LibroService.java`
- [ ] `LibroController.java`

**Frontend Final:**
- [ ] `libros-list-final.html` (Thymeleaf basado en prototipo final)
- [ ] `libros.css` (estilos extraídos del prototipo final)
- [ ] `libros-final.js` (JavaScript adaptado para AJAX)

### **3.2 Comparación de Prototipos**
1. Abre `prototipo-libreria.html` (inicial) en tu navegador
2. Abre `prototipo-libreria-v2.html` (mejorado) en otra pestaña
3. Abre `prototipo-libreria-final.html` (refinado) en otra pestaña
4. Compara la evolución del diseño
5. Verifica que el final se ve profesional y pulido
6. Toma capturas de las 3 versiones para documentar la evolución

### **3.3 Validación de Consistencia**
1. Compara `libros-list-final.html` con `prototipo-libreria-final.html`
2. Verifica que son visualmente idénticos
3. Revisa que todas las clases Java siguen los patrones X21A
4. Comprueba que el CSS mantiene todos los estilos del prototipo
5. Valida que el JavaScript funciona con datos reales
6. Confirma que las URLs usan el contexto `/libreria-app` correctamente

## 📝 **PASO 4: Documentar Resultados**

### **4.1 Crear Reporte**
Crea un archivo `reporte-prueba.md` con:
- IA utilizada
- Tiempo total empleado
- Calidad del código generado
- Problemas encontrados
- Mejoras sugeridas

### **4.2 Capturas de Pantalla**
Guarda capturas de:
- Prototipo en desktop
- Prototipo en móvil
- Modal de crear/editar
- Tabla con datos

## 🎯 **Resultado Esperado**

Al final tendrás una aplicación completa de librería con:
- ✅ Prototipo HTML funcional
- ✅ Entidad JPA completa con validaciones
- ✅ Repository con consultas personalizadas
- ✅ Service con lógica de negocio
- ✅ Controller con APIs REST
- ✅ Vista Thymeleaf profesional
- ✅ JavaScript con AJAX completo

**¡Listo para probar el framework X21A con cualquier IA!**