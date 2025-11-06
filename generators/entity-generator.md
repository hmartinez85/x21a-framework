# Generador de Entidades JPA - X21A Framework

## Prompt para IA

```
Genera una entidad JPA para Spring Boot siguiendo el patrón X21A de EJIE con estas especificaciones:

### Requisitos Técnicos:
- Java 11+
- Spring Boot 2.7.18
- Oracle Database con secuencias
- Anotaciones JPA estándar
- Jackson para JSON
- Validaciones Bean Validation

### Estructura Base:
```java
package com.ejie.x21a.model;

import javax.persistence.*;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;

@Entity
@Table(name = "NOMBRE_TABLA")
public class NombreEntidad {
    
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq_generator")
    @SequenceGenerator(name = "seq_generator", sequenceName = "SEQ_NOMBRE_TABLA", allocationSize = 1)
    private Long id;
    
    // Campos con validaciones apropiadas
    
    @Temporal(TemporalType.TIMESTAMP)
    @JsonFormat(pattern = "dd/MM/yyyy HH:mm:ss")
    private Date createdDate;
    
    // Constructor vacío
    // Getters y setters
    // toString, equals, hashCode
}
```

### Patrones a Seguir:
1. **Nombres**: PascalCase para clases, camelCase para campos
2. **Validaciones**: @NotNull, @NotBlank, @Size, @Pattern según corresponda
3. **Fechas**: @JsonFormat con patrón dd/MM/yyyy HH:mm:ss
4. **Secuencias**: Usar nomenclatura SEQ_NOMBRE_TABLA
5. **Tablas**: Nombres en mayúsculas con guiones bajos

### Campos Estándar:
- `id`: Long con @GeneratedValue
- `createdDate`: Date con @JsonFormat
- `status`: String con valores ACTIVE/INACTIVE

### Validaciones Comunes:
- Nombres: @NotBlank @Size(max = 100)
- Descripciones: @Size(max = 500)
- Emails: @Email @Size(max = 100)
- Estados: @Pattern(regexp = "ACTIVE|INACTIVE")

Genera la entidad para: [DESCRIPCIÓN_DE_LA_ENTIDAD]
```

## Ejemplo de Uso

**Input**: "Genera una entidad para gestionar productos con nombre, descripción, precio y categoría"

**Output Esperado**: Entidad Product con validaciones apropiadas, secuencia Oracle, y campos estándar.

## Validaciones Post-Generación

- [ ] Nomenclatura correcta (PascalCase/camelCase)
- [ ] Secuencia Oracle configurada
- [ ] Validaciones Bean Validation
- [ ] Formato de fechas JSON
- [ ] Constructor vacío presente
- [ ] Métodos equals/hashCode/toString
- [ ] Campos estándar incluidos