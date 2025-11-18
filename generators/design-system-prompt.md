# PASO 2.0: Design System - Framework x21a

## 🎨 Prompt para Crear Design System Empresarial

```
CREA UN DESIGN SYSTEM COMPLETO para el proyecto Framework x21a.

### 📋 INFORMACIÓN DEL PROYECTO (Completar según análisis del PASO 1)
- **Dominio de Negocio**: [DOMINIO_NEGOCIO] 
- **Nombre del Proyecto**: [NOMBRE_PROYECTO]
- **Entidad Principal**: [ENTIDAD_PRINCIPAL]
- **Ruta del Proyecto**: [RUTA_PROYECTO]
- **Público Objetivo**: [PUBLICO_OBJETIVO]
- **Campos de la Entidad**: [CAMPOS_ENTIDAD]

### 🎯 OBJETIVO DEL DESIGN SYSTEM

Crear un sistema de diseño coherente, profesional y escalable que:
- Garantice consistencia visual en toda la aplicación
- Refleje la identidad del dominio de negocio
- Proporcione componentes reutilizables
- Establezca patrones de UX/UI claros
- Facilite el desarrollo frontend

### 🛠️ TECNOLOGÍA FRONTEND SELECCIONADA: [FRONTEND_TECH]

**INSTRUCCIONES DE USO:**
1. Completa la información del proyecto basándote en el análisis del PASO 1
2. Selecciona UNA de las 4 opciones tecnológicas disponibles
3. Personaliza los colores según el dominio de negocio identificado
4. Genera el design system específico para la tecnología elegida
5. Valida el checkpoint antes de continuar al siguiente paso

#### OPCIÓN 1: REACT + MATERIAL-UI
**Librerías recomendadas:**
1. **@mui/material** - Componentes base (Button, TextField, Card, etc.)
2. **@mui/x-data-grid** - Tablas avanzadas con paginación y filtros  
3. **@mui/x-date-pickers** - Selectores de fecha profesionales

#### OPCIÓN 2: ANGULAR + ANGULAR MATERIAL
**Librerías recomendadas:**
1. **@angular/material** - Componentes Material Design para Angular
2. **@angular/cdk** - Kit de desarrollo de componentes
3. **@angular/flex-layout** - Sistema de layout responsive

#### OPCIÓN 3: REACT + ATLASSIAN DESIGN SYSTEM
**Librerías recomendadas:**
1. **@atlaskit/tokens** - Sistema de tokens de diseño
2. **@atlaskit/button** - Componentes de botones empresariales
3. **@atlaskit/dynamic-table** - Tablas dinámicas profesionales

#### OPCIÓN 4: THYMELEAF + BOOTSTRAP
**Librerías recomendadas:**
1. **Bootstrap 5** - Framework CSS responsive y componentes
2. **Bootstrap Icons** - Iconografía consistente
3. **DataTables** - Tablas interactivas con jQuery

### 🎨 COMPONENTES DEL DESIGN SYSTEM

#### 1. PALETA DE COLORES EMPRESARIAL

**Colores Primarios:**
```css
:root {
  /* Colores principales del dominio [DOMINIO_NEGOCIO] */
  --primary: #[COLOR_PRIMARIO]; /* Color principal del dominio */
  --primary-dark: #[COLOR_PRIMARIO_OSCURO]; /* Versión oscura */
  --primary-light: #[COLOR_PRIMARIO_CLARO]; /* Versión clara */
  
  /* Colores secundarios */
  --secondary: #[COLOR_SECUNDARIO]; /* Color complementario */
  --accent: #[COLOR_ACENTO]; /* Color de acento para destacar */
  
  /* Estados semánticos */
  --success: #10b981;
  --warning: #f59e0b;
  --danger: #ef4444;
  --info: #3b82f6;
  
  /* Colores neutros */
  --dark: #1e293b;
  --gray-900: #111827;
  --gray-800: #1f2937;
  --gray-700: #374151;
  --gray-600: #4b5563;
  --gray-500: #6b7280;
  --gray-400: #9ca3af;
  --gray-300: #d1d5db;
  --gray-200: #e5e7eb;
  --gray-100: #f3f4f6;
  --gray-50: #f9fafb;
  --white: #ffffff;
  
  /* Fondos */
  --bg-primary: #ffffff;
  --bg-secondary: #f8fafc;
  --bg-tertiary: #f1f5f9;
}
```

#### 2. TIPOGRAFÍA EMPRESARIAL

**Fuentes Principales:**
```css
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap');

:root {
  --font-primary: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
  --font-secondary: 'Inter', serif;
  --font-mono: 'JetBrains Mono', 'Fira Code', monospace;
}
```

#### 3. IMPLEMENTACIÓN POR TECNOLOGÍA

**REACT + MATERIAL-UI:**
```javascript
// theme.js
import { createTheme } from '@mui/material/styles';

export const theme = createTheme({
  palette: {
    primary: { 
      main: '#[COLOR_PRIMARIO]', 
      dark: '#[COLOR_PRIMARIO_OSCURO]',
      light: '#[COLOR_PRIMARIO_CLARO]'
    },
    secondary: { main: '#[COLOR_SECUNDARIO]' },
  },
  typography: {
    fontFamily: 'Inter, Arial, sans-serif',
  },
  components: {
    MuiButton: {
      styleOverrides: {
        root: { borderRadius: 8, textTransform: 'none' },
      },
    },
  },
});

// Componente ejemplo
import { Card, CardContent, Typography } from '@mui/material';
// Componente personalizado para [ENTIDAD_PRINCIPAL]
export const [ENTIDAD_PRINCIPAL]Card = ({ titulo, children, datos }) => (
  <Card elevation={2} sx={{ borderRadius: 2, mb: 2 }}>
    <CardContent>
      <Typography variant="h6" color="primary">{titulo}</Typography>
      {children}
      {/* Aquí irán los campos específicos de [ENTIDAD_PRINCIPAL] */}
    </CardContent>
  </Card>
);
```

**ANGULAR + ANGULAR MATERIAL:**
```typescript
// theme.scss
@use '@angular/material' as mat;

$primary-palette: mat.define-palette(mat.$indigo-palette);
$accent-palette: mat.define-palette(mat.$pink-palette);
$theme: mat.define-light-theme((
  color: (
    primary: $primary-palette,
    accent: $accent-palette,
  )
));

@include mat.all-component-themes($theme);

// Componente ejemplo
// custom-card.component.ts
import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-custom-card',
  template: `
    <mat-card>
      <mat-card-header>
        <mat-card-title>{{titulo}}</mat-card-title>
      </mat-card-header>
      <mat-card-content>
        <ng-content></ng-content>
      </mat-card-content>
    </mat-card>
  `
})
export class CustomCardComponent {
  @Input() titulo: string = '';
}
```

**REACT + ATLASSIAN DESIGN SYSTEM:**
```javascript
// theme.js
import { setGlobalTheme } from '@atlaskit/tokens';

setGlobalTheme({
  colorMode: 'light',
  UNSAFE_themeOptions: {
    brandColor: '#[COLOR_PRIMARIO]',
  },
});

// Componente ejemplo
import Button from '@atlaskit/button/standard-button';
import { Card } from '@atlaskit/card';
import Heading from '@atlaskit/heading';

export const CustomCard = ({ titulo, children, onAction }) => (
  <Card>
    <div style={{ padding: '16px' }}>
      <Heading size="medium">{titulo}</Heading>
      {children}
      <Button appearance="primary" onClick={onAction}>
        Acción
      </Button>
    </div>
  </Card>
);
```

**THYMELEAF + BOOTSTRAP:**
```css
/* custom.css */
:root {
  --bs-primary: #[COLOR_PRIMARIO]; /* Color principal [DOMINIO_NEGOCIO] */
  --bs-secondary: #[COLOR_SECUNDARIO]; /* Color secundario */
}

.btn-primary {
  background: linear-gradient(135deg, var(--bs-primary) 0%, var(--bs-primary) 100%);
  border: none;
  border-radius: 0.5rem;
  font-weight: 600;
}

.custom-card {
  border: none;
  border-radius: 0.75rem;
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
}
```

```html
<!-- Componente [ENTIDAD_PRINCIPAL] para Thymeleaf -->
<div class="card custom-card [ENTIDAD_PRINCIPAL]-card">
  <div class="card-header">
    <h5 class="card-title mb-0" th:text="${[ENTIDAD_PRINCIPAL].titulo}">[ENTIDAD_PRINCIPAL] Título</h5>
  </div>
  <div class="card-body">
    <!-- Campos específicos de [ENTIDAD_PRINCIPAL]: [CAMPOS_ENTIDAD] -->
    <p class="card-text" th:text="${[ENTIDAD_PRINCIPAL].descripcion}">Descripción</p>
  </div>
</div>
```

### 🎯 CHECKPOINT DESIGN SYSTEM

**✅ CHECKPOINT 0: Validar Design System**

**Criterios de validación:**
- [ ] ✅ Información del proyecto completada desde PASO 1
- [ ] ✅ Tecnología frontend seleccionada (1 de 4 opciones)
- [ ] ✅ Paleta de colores coherente con [DOMINIO_NEGOCIO]
- [ ] ✅ Tipografía legible y profesional
- [ ] ✅ Componentes base definidos para [ENTIDAD_PRINCIPAL]
- [ ] ✅ Sistema responsive implementado
- [ ] ✅ Ejemplos de código funcionales

**RESULTADO ESPERADO:**
- Archivo: `design-system-[NOMBRE_PROYECTO].md`
- Colores personalizados para el dominio
- Componentes reutilizables específicos
- Configuración técnica completa

**SIGUIENTE PASO:** Una vez validado el Design System, continuar con PASO 2 - Prototipo HTML

¿El Design System cumple todos los criterios de validación?
```