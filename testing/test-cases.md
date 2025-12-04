# 🧪 CASOS DE PRUEBA - Framework x21a V3.0

## 📋 TEST CASE 1: PROYECTO SIMPLE
```
DOMINIO_NEGOCIO: Gestión de Libros
NOMBRE_PROYECTO: pruebaLibreria1
ENTIDAD_PRINCIPAL: libro
RUTA_PROYECTO: C:\test\pruebaLibreria1
CAMPOS_ENTIDAD: libro->titulo, autor, isbn, precio, categoria, stock
FRONTEND_TECH: REACT + MATERIAL-UI
TIPO_DESPLIEGUE: WAR PARA TOMCAT
PUERTO: 8082
BBDD: Datos hardcodeados
```

## 📋 TEST CASE 2: PROYECTO COMPLEJO
```
DOMINIO_NEGOCIO: Sistema de Reservas Hotel
NOMBRE_PROYECTO: pruebaHotel1
ENTIDAD_PRINCIPAL: reserva, habitacion, cliente
RUTA_PROYECTO: C:\test\pruebaHotel1
CAMPOS_ENTIDAD: 
reserva->fechaEntrada, fechaSalida, numeroHuespedes, precioTotal
habitacion->numero, tipo, precio, disponible
cliente->nombre, email, telefono, documento
FRONTEND_TECH: REACT + ATLASSIAN DESIGN SYSTEM
TIPO_DESPLIEGUE: WAR PARA TOMCAT
PUERTO: 8083
BBDD: Oracle real (copiar de proyecto existente)
```

## 📋 TEST CASE 3: PROYECTO MÍNIMO
```
DOMINIO_NEGOCIO: Lista de Tareas
NOMBRE_PROYECTO: pruebaTareas1
ENTIDAD_PRINCIPAL: tarea
RUTA_PROYECTO: C:\test\pruebaTareas1
CAMPOS_ENTIDAD: tarea->titulo, descripcion, completada, fechaCreacion
FRONTEND_TECH: THYMELEAF + BOOTSTRAP
TIPO_DESPLIEGUE: JAR STANDALONE
PUERTO: 8084
BBDD: Datos hardcodeados
```