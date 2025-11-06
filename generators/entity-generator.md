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

### Estructura Completa Obligatoria:

**📁 Archivos a generar:**
```
src/main/java/com/ejie/[proyecto]/
├── model/[Entidad].java (extends BaseEntity)
├── repository/[Entidad]Repository.java
├── service/[Entidad]Service.java
├── controller/[Entidad]Controller.java
└── [Proyecto]Application.java

src/main/resources/
├── templates/[entidad]/list.html
├── static/css/style.css
├── static/js/app.js
├── application.properties
└── data.sql

src/main/webapp/
├── META-INF/context.xml
└── WEB-INF/web.xml

database/
└── schema.sql

README.md
DEPLOYMENT.md
TOMCAT-SETUP.md
pom.xml
```

**🏗️ Entidad Base:**
```java
package com.ejie.[proyecto].model;

import javax.persistence.*;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import java.math.BigDecimal;

@Entity
@Table(name = "[ENTIDAD_PLURAL]")
public class [Entidad] extends BaseEntity {
    
    // Campos específicos con validaciones
    
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