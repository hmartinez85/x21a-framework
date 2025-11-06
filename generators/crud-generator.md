# Generador CRUD Completo - X21A Framework

## Prompt para IA

```
Genera un CRUD completo siguiendo el patrón X21A de EJIE con estas especificaciones:

### Componentes a Generar:
1. **Controller REST** con endpoints estándar
2. **Service** con lógica de negocio
3. **Repository** JPA con consultas personalizadas
4. **Template Thymeleaf** con Bootstrap 5
5. **JavaScript** con AJAX y validaciones

### 1. Controller Pattern:
```java
@Controller
@RequestMapping("/entidad")
public class EntidadController {
    
    @Autowired
    private EntidadService service;
    
    @GetMapping("/list")
    public String showList(Model model, Pageable pageable) {
        // Lógica de listado con paginación
    }
    
    @GetMapping("/{id}")
    @ResponseBody
    public EntidadEntity getEntity(@PathVariable Long id) {
        // Obtener por ID
    }
    
    @PostMapping("/add")
    @ResponseBody
    public EntidadEntity addEntity(@RequestBody EntidadEntity entity) {
        // Crear nuevo
    }
    
    @PutMapping("/update/{id}")
    @ResponseBody
    public EntidadEntity updateEntity(@PathVariable Long id, @RequestBody EntidadEntity entity) {
        // Actualizar existente
    }
    
    @DeleteMapping("/delete/{id}")
    @ResponseBody
    public ResponseEntity<Map<String, String>> deleteEntity(@PathVariable Long id) {
        // Eliminar con respuesta JSON
    }
    
    @GetMapping("/search")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> searchEntities(@RequestParam String name, Pageable pageable) {
        // Búsqueda con paginación
    }
    
    @GetMapping("/page")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> getPage(Pageable pageable) {
        // Paginación
    }
}
```

### 2. Service Pattern:
```java
@Service
public class EntidadService {
    
    @Autowired
    private EntidadRepository repository;
    
    public Page<EntidadEntity> findAll(Pageable pageable) {
        return repository.findAll(pageable);
    }
    
    public Optional<EntidadEntity> findById(Long id) {
        return repository.findById(id);
    }
    
    public EntidadEntity save(EntidadEntity entity) {
        if (entity.getCreatedDate() == null) {
            entity.setCreatedDate(new Date());
        }
        return repository.save(entity);
    }
    
    public void deleteById(Long id) {
        repository.deleteById(id);
    }
    
    public Page<EntidadEntity> findByNameContaining(String name, Pageable pageable) {
        return repository.findByNameContainingIgnoreCase(name, pageable);
    }
    
    public List<EntidadEntity> findAll() {
        return repository.findAll();
    }
}
```

### 3. Repository Pattern:
```java
@Repository
public interface EntidadRepository extends JpaRepository<EntidadEntity, Long> {
    
    Page<EntidadEntity> findByNameContainingIgnoreCase(String name, Pageable pageable);
    
    List<EntidadEntity> findByStatus(String status);
    
    @Query("SELECT e FROM EntidadEntity e WHERE e.createdDate >= :startDate")
    List<EntidadEntity> findByCreatedDateAfter(@Param("startDate") Date startDate);
}
```

### 4. Frontend Requirements:
- **Bootstrap 5** con tema profesional
- **Font Awesome** para iconos
- **SweetAlert2** para confirmaciones
- **Paginación** funcional
- **Búsqueda** en tiempo real
- **Modales** para crear/editar
- **Validaciones** client-side

### 5. JavaScript Pattern:
- URLs con contexto `/x21a-app/entidad/...`
- Manejo de errores con try-catch
- Funciones async/await
- Validaciones antes de envío
- Actualización de contadores
- Paginación dinámica

### Características Requeridas:
- ✅ Paginación completa
- ✅ Búsqueda por nombre
- ✅ CRUD completo (Create, Read, Update, Delete)
- ✅ Validaciones frontend y backend
- ✅ Manejo de errores
- ✅ Interfaz responsive
- ✅ Confirmaciones de acciones
- ✅ Feedback visual (loading, success, error)

Genera CRUD completo para: [DESCRIPCIÓN_DE_LA_ENTIDAD]
```

## Checklist Post-Generación

### Backend:
- [ ] Controller con todos los endpoints
- [ ] Service con lógica de negocio
- [ ] Repository con consultas personalizadas
- [ ] Validaciones en entidad
- [ ] Manejo de errores

### Frontend:
- [ ] Template Thymeleaf responsive
- [ ] JavaScript con AJAX
- [ ] Modales funcionales
- [ ] Paginación operativa
- [ ] Búsqueda implementada
- [ ] Validaciones client-side
- [ ] Feedback visual

### Integración:
- [ ] URLs con contexto correcto
- [ ] Serialización JSON correcta
- [ ] Manejo de fechas
- [ ] Respuestas consistentes
- [ ] Logging apropiado