# Generador de Interfaz de Usuario - X21A Framework

## Prompt para IA

```
Genera una interfaz de usuario profesional siguiendo el patrón X21A de EJIE con estas especificaciones:

### Stack Frontend:
- **Thymeleaf** como motor de plantillas
- **Bootstrap 5.3.0** para estilos
- **Font Awesome 6.0.0** para iconos
- **SweetAlert2** para alertas elegantes
- **JavaScript ES6+** con AJAX

### Estructura HTML Base:
```html
<!DOCTYPE html>
<html lang="es" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>[[${title}]] - X21A Enterprise</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <link href="/x21a-app/css/style.css" rel="stylesheet">
</head>
<body>
    <div class="container-fluid">
        <!-- Header con título y botón principal -->
        <div class="d-flex justify-content-between align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2">
                <i class="fas fa-[ICONO]"></i> [[${title}]]
            </h1>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addModal">
                <i class="fas fa-plus-circle"></i> Nuevo [[${entityName}]]
            </button>
        </div>

        <!-- Cards de estadísticas -->
        <div class="row mb-4">
            <div class="col-md-3">
                <div class="card stats-card animate-slide-up">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="stats-icon bg-primary">
                                <i class="fas fa-list"></i>
                            </div>
                            <div class="ms-3">
                                <h5 class="card-title mb-0" id="totalCount">[[${totalCount}]]</h5>
                                <p class="card-text text-muted">Total</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Más cards según necesidad -->
        </div>

        <!-- Filtros y búsqueda -->
        <div class="card mb-4">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="input-group">
                            <span class="input-group-text">
                                <i class="fas fa-search"></i>
                            </span>
                            <input type="text" class="form-control" id="searchInput" placeholder="Buscar...">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <button type="button" class="btn btn-outline-secondary" onclick="clearSearch()">
                            <i class="fas fa-times"></i> Limpiar
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Tabla de datos -->
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead class="table-dark">
                            <tr>
                                <th><input type="checkbox" id="selectAll"></th>
                                <th>ID</th>
                                <!-- Columnas dinámicas -->
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody id="tableBody">
                            <!-- Datos dinámicos -->
                        </tbody>
                    </table>
                </div>

                <!-- Paginación -->
                <nav aria-label="Paginación">
                    <ul class="pagination justify-content-center" id="pagination">
                        <!-- Paginación dinámica -->
                    </ul>
                </nav>
            </div>
        </div>
    </div>

    <!-- Modal para crear/editar -->
    <div class="modal fade" id="addModal" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">
                        <i class="fas fa-plus-circle me-2"></i>Nuevo [[${entityName}]]
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <form id="entityForm">
                        <!-- Campos del formulario -->
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                    <button type="button" class="btn btn-primary" onclick="saveEntity()">Guardar</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="/x21a-app/js/app.js"></script>
</body>
</html>
```

### CSS Personalizado (style.css):
```css
:root {
    --primary-color: #0d6efd;
    --secondary-color: #6c757d;
    --success-color: #198754;
    --danger-color: #dc3545;
    --warning-color: #ffc107;
    --info-color: #0dcaf0;
    --light-color: #f8f9fa;
    --dark-color: #212529;
}

.stats-card {
    border: none;
    box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
    transition: all 0.3s ease;
}

.stats-card:hover {
    transform: translateY(-2px);
    box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
}

.stats-icon {
    width: 50px;
    height: 50px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
}

.animate-slide-up {
    opacity: 0;
    transform: translateY(20px);
    transition: all 0.5s ease;
}

.action-buttons {
    display: flex;
    gap: 0.25rem;
    justify-content: center;
}

.action-buttons .btn {
    padding: 0.25rem 0.5rem;
}

.status-indicator {
    width: 8px;
    height: 8px;
    border-radius: 50%;
    margin-right: 8px;
}

.status-active {
    background-color: var(--success-color);
}

.status-inactive {
    background-color: var(--danger-color);
}

.table th {
    border-top: none;
    font-weight: 600;
    text-transform: uppercase;
    font-size: 0.875rem;
    letter-spacing: 0.5px;
}

.pagination .page-link {
    border-radius: 0.375rem;
    margin: 0 0.125rem;
    border: 1px solid #dee2e6;
}

.pagination .page-item.active .page-link {
    background-color: var(--primary-color);
    border-color: var(--primary-color);
}
```

### JavaScript Pattern:
```javascript
// Variables globales
let currentEditId = null;
let currentPage = 0;
let pageSize = 10;
let totalPages = 1;
let isSearching = false;

// Inicialización
document.addEventListener('DOMContentLoaded', function() {
    loadPage(0);
    initializeEventListeners();
});

// Funciones principales
function loadPage(page) { /* Implementación */ }
function searchEntities(page = 0) { /* Implementación */ }
function saveEntity() { /* Implementación */ }
function editEntity(id) { /* Implementación */ }
function deleteEntity(id) { /* Implementación */ }
function updatePagination() { /* Implementación */ }
function updateTableBody(data) { /* Implementación */ }
```

### Características de UI:
- ✅ **Responsive Design** con Bootstrap 5
- ✅ **Cards de estadísticas** animadas
- ✅ **Tabla con hover effects**
- ✅ **Paginación elegante**
- ✅ **Modales para CRUD**
- ✅ **Búsqueda en tiempo real**
- ✅ **Botones de acción** con iconos
- ✅ **Feedback visual** (loading, success, error)
- ✅ **Animaciones suaves**
- ✅ **Tema profesional** consistente

Genera interfaz para: [DESCRIPCIÓN_DE_LA_ENTIDAD]
```

## Componentes Reutilizables

### Botones de Acción:
```html
<div class="action-buttons">
    <button class="btn btn-primary btn-sm" onclick="editEntity(${id})" title="Editar">
        <i class="fas fa-edit"></i>
    </button>
    <button class="btn btn-info btn-sm" title="Ver detalles">
        <i class="fas fa-eye"></i>
    </button>
    <button class="btn btn-danger btn-sm" onclick="confirmDelete(${id})" title="Eliminar">
        <i class="fas fa-trash"></i>
    </button>
</div>
```

### Cards de Estadísticas:
```html
<div class="card stats-card animate-slide-up">
    <div class="card-body">
        <div class="d-flex align-items-center">
            <div class="stats-icon bg-primary">
                <i class="fas fa-chart-bar"></i>
            </div>
            <div class="ms-3">
                <h5 class="card-title mb-0">[[${count}]]</h5>
                <p class="card-text text-muted">[[${label}]]</p>
            </div>
        </div>
    </div>
</div>
```

### Indicadores de Estado:
```html
<div class="d-flex align-items-center">
    <div class="status-indicator status-active"></div>
    <span class="badge bg-success">Activo</span>
</div>
```