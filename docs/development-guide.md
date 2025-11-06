# Guía de Desarrollo - X21A Framework

## 🎯 Objetivo

Esta guía establece los estándares y mejores prácticas para el desarrollo de aplicaciones empresariales usando el framework X21A de EJIE.

## 📋 Prerrequisitos

### Software Requerido
- **Java 11+** (OpenJDK o Oracle JDK)
- **Maven 3.6+** para gestión de dependencias
- **Oracle Database 12c+** o compatible
- **Apache Tomcat 9.0+** para despliegue
- **IDE** recomendado: IntelliJ IDEA o Eclipse

### Configuración del Entorno
```bash
# Variables de entorno
export JAVA_HOME=/path/to/java11
export MAVEN_HOME=/path/to/maven
export CATALINA_HOME=/path/to/tomcat

# Verificar instalación
java -version
mvn -version
```

## 🏗️ Estructura del Proyecto

```
mi-aplicacion-x21a/
├── src/main/java/com/ejie/x21a/
│   ├── config/                 # Configuraciones Spring
│   ├── controller/             # Controladores REST/MVC
│   ├── model/                  # Entidades JPA
│   ├── repository/             # Repositorios de datos
│   ├── service/                # Servicios de negocio
│   └── Application.java        # Clase principal
├── src/main/resources/
│   ├── static/                 # Recursos estáticos (CSS, JS, imágenes)
│   ├── templates/              # Plantillas Thymeleaf
│   ├── application.properties  # Configuración de aplicación
│   └── data.sql               # Datos iniciales
├── src/main/webapp/
│   ├── META-INF/context.xml   # Configuración JNDI
│   └── WEB-INF/web.xml        # Configuración web
├── database/
│   └── schema.sql             # Scripts de base de datos
├── pom.xml                    # Configuración Maven
└── README.md                  # Documentación del proyecto
```

## 🔧 Configuración Inicial

### 1. Crear Proyecto Base
```bash
# Copiar skeleton
cp -r x21a-skeleton mi-nueva-app
cd mi-nueva-app

# Personalizar pom.xml
sed -i 's/x21a-skeleton/mi-nueva-app/g' pom.xml
```

### 2. Configurar Base de Datos

**📁 Archivos de configuración:**
- `src/main/resources/application.properties` - Configuración principal
- `src/main/webapp/META-INF/context.xml` - Configuración JNDI para Tomcat

**application.properties:**
```properties
# JNDI DataSource (recomendado para producción)
spring.datasource.jndi-name=java:comp/env/jdbc/x21DataSource
spring.jpa.database-platform=org.hibernate.dialect.Oracle12cDialect

# Configuración directa (para desarrollo local)
# spring.datasource.url=jdbc:oracle:thin:@localhost:1530:xe
# spring.datasource.username=xxxxxxxx
# spring.datasource.password=xxxxxxxx
```

**META-INF/context.xml:**
```xml
<Context>
    <Resource name="jdbc/x21DataSource"
              auth="Container"
              type="javax.sql.DataSource"
              driverClassName="oracle.jdbc.OracleDriver"
              url="jdbc:oracle:thin:@x21d:1530/x21.ejie.eus"
              username="xxxxxxxx"
              password="xxxxxxxx"
              maxTotal="20"
              maxIdle="10"
              maxWaitMillis="-1"/>
</Context>
```

### 3. Configurar Aplicación
```properties
# application.properties
spring.application.name=mi-nueva-app
spring.datasource.jndi-name=java:comp/env/jdbc/miapp
spring.jpa.hibernate.ddl-auto=validate
spring.jpa.show-sql=false
spring.jpa.properties.hibernate.format_sql=true

# Configuración de logging
logging.level.com.ejie.x21a=INFO
logging.level.org.springframework.web=DEBUG
```

## 📝 Convenciones de Código

### Nomenclatura
- **Clases**: PascalCase (`UserController`, `ProductService`)
- **Métodos**: camelCase (`findById`, `saveUser`)
- **Variables**: camelCase (`userName`, `productList`)
- **Constantes**: UPPER_SNAKE_CASE (`MAX_RETRY_COUNT`)
- **Paquetes**: lowercase (`com.ejie.x21a.controller`)

### Estructura de Clases
```java
@Entity
@Table(name = "USERS")
public class User extends BaseEntity {
    
    // 1. Constantes
    public static final String STATUS_ACTIVE = "ACTIVE";
    
    // 2. Campos de instancia
    @NotBlank
    @Size(max = 100)
    @Column(name = "USERNAME")
    private String username;
    
    // 3. Constructores
    public User() {
        super();
    }
    
    public User(String username) {
        this();
        this.username = username;
    }
    
    // 4. Métodos de negocio
    public boolean isActive() {
        return STATUS_ACTIVE.equals(getStatus());
    }
    
    // 5. Getters y Setters
    public String getUsername() {
        return username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    
    // 6. equals, hashCode, toString
}
```

## 🎨 Patrones de Diseño

### 1. Controller Pattern
```java
@Controller
@RequestMapping("/users")
public class UserController {
    
    @Autowired
    private UserService userService;
    
    @GetMapping("/list")
    public String listUsers(Model model, Pageable pageable) {
        Page<User> users = userService.findAll(pageable);
        model.addAttribute("users", users);
        return "users/list";
    }
    
    @PostMapping("/save")
    @ResponseBody
    public ResponseEntity<User> saveUser(@Valid @RequestBody User user) {
        try {
            User savedUser = userService.save(user);
            return ResponseEntity.ok(savedUser);
        } catch (Exception e) {
            return ResponseEntity.badRequest().build();
        }
    }
}
```

### 2. Service Pattern
```java
@Service
@Transactional
public class UserService {
    
    @Autowired
    private UserRepository userRepository;
    
    @Transactional(readOnly = true)
    public Page<User> findAll(Pageable pageable) {
        return userRepository.findAll(pageable);
    }
    
    public User save(User user) {
        validateUser(user);
        if (user.getId() == null) {
            user.setCreatedDate(new Date());
        }
        return userRepository.save(user);
    }
    
    private void validateUser(User user) {
        if (user.getUsername() == null || user.getUsername().trim().isEmpty()) {
            throw new IllegalArgumentException("Username is required");
        }
    }
}
```

### 3. Repository Pattern
```java
@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    
    Page<User> findByUsernameContainingIgnoreCase(String username, Pageable pageable);
    
    List<User> findByStatus(String status);
    
    @Query("SELECT u FROM User u WHERE u.createdDate >= :date")
    List<User> findByCreatedDateAfter(@Param("date") Date date);
    
    @Modifying
    @Query("UPDATE User u SET u.status = :status WHERE u.id = :id")
    int updateStatus(@Param("id") Long id, @Param("status") String status);
}
```

## 🎯 Mejores Prácticas

### 1. Manejo de Errores
```java
@ControllerAdvice
public class GlobalExceptionHandler {
    
    @ExceptionHandler(ValidationException.class)
    public ResponseEntity<ErrorResponse> handleValidation(ValidationException e) {
        ErrorResponse error = new ErrorResponse("VALIDATION_ERROR", e.getMessage());
        return ResponseEntity.badRequest().body(error);
    }
    
    @ExceptionHandler(EntityNotFoundException.class)
    public ResponseEntity<ErrorResponse> handleNotFound(EntityNotFoundException e) {
        ErrorResponse error = new ErrorResponse("NOT_FOUND", e.getMessage());
        return ResponseEntity.notFound().build();
    }
}
```

### 2. Validaciones
```java
@Entity
public class User extends BaseEntity {
    
    @NotBlank(message = "Username is required")
    @Size(min = 3, max = 50, message = "Username must be between 3 and 50 characters")
    @Pattern(regexp = "^[a-zA-Z0-9_]+$", message = "Username can only contain letters, numbers and underscores")
    private String username;
    
    @Email(message = "Invalid email format")
    @Size(max = 100, message = "Email cannot exceed 100 characters")
    private String email;
}
```

### 3. Logging
```java
@Service
public class UserService {
    
    private static final Logger logger = LoggerFactory.getLogger(UserService.class);
    
    public User save(User user) {
        logger.info("Saving user: {}", user.getUsername());
        try {
            User savedUser = userRepository.save(user);
            logger.info("User saved successfully with ID: {}", savedUser.getId());
            return savedUser;
        } catch (Exception e) {
            logger.error("Error saving user: {}", user.getUsername(), e);
            throw new ServiceException("Failed to save user", e);
        }
    }
}
```

## 🧪 Testing

### Unit Tests
```java
@ExtendWith(MockitoExtension.class)
class UserServiceTest {
    
    @Mock
    private UserRepository userRepository;
    
    @InjectMocks
    private UserService userService;
    
    @Test
    void shouldSaveUserSuccessfully() {
        // Given
        User user = new User("testuser");
        when(userRepository.save(any(User.class))).thenReturn(user);
        
        // When
        User result = userService.save(user);
        
        // Then
        assertThat(result.getUsername()).isEqualTo("testuser");
        verify(userRepository).save(user);
    }
}
```

### Integration Tests
```java
@SpringBootTest
@TestPropertySource(locations = "classpath:application-test.properties")
class UserControllerIntegrationTest {
    
    @Autowired
    private TestRestTemplate restTemplate;
    
    @Test
    void shouldCreateUserSuccessfully() {
        // Given
        User user = new User("testuser");
        
        // When
        ResponseEntity<User> response = restTemplate.postForEntity("/users", user, User.class);
        
        // Then
        assertThat(response.getStatusCode()).isEqualTo(HttpStatus.CREATED);
        assertThat(response.getBody().getUsername()).isEqualTo("testuser");
    }
}
```

## 🚀 Despliegue

### 1. Compilación
```bash
mvn clean package -DskipTests
```

### 2. Despliegue en Tomcat
```bash
cp target/mi-app.war $CATALINA_HOME/webapps/
$CATALINA_HOME/bin/startup.sh
```

### 3. Verificación
```bash
curl http://localhost:8080/mi-app/health
```

## 📊 Métricas de Calidad

### Objetivos de Calidad
- **Cobertura de código**: > 80%
- **Complejidad ciclomática**: < 10 por método
- **Duplicación de código**: < 3%
- **Deuda técnica**: < 5%

### Herramientas
- **Checkstyle**: Estilo de código
- **PMD**: Análisis estático
- **SpotBugs**: Detección de bugs
- **JaCoCo**: Cobertura de código
- **SonarQube**: Análisis integral

## 📚 Recursos Adicionales

- [Spring Boot Documentation](https://spring.io/projects/spring-boot)
- [Thymeleaf Documentation](https://www.thymeleaf.org/documentation.html)
- [Bootstrap Documentation](https://getbootstrap.com/docs/)
- [Oracle JDBC Documentation](https://docs.oracle.com/en/database/oracle/oracle-database/)