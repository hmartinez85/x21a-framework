#!/bin/bash

echo "========================================"
echo "   X21A Framework - Setup GitHub"
echo "========================================"
echo

echo "1. Inicializando repositorio Git..."
git init

echo "2. Añadiendo archivos al repositorio..."
git add .

echo "3. Realizando commit inicial..."
git commit -m "feat: initial commit - X21A Framework complete structure"

echo "4. Configurando rama principal..."
git branch -M main

echo
echo "========================================"
echo "   SIGUIENTE PASO:"
echo "========================================"
echo
echo "1. Crea un repositorio en GitHub llamado 'x21a-framework'"
echo "2. Ejecuta estos comandos:"
echo
echo "   git remote add origin https://github.com/[tu-usuario]/x21a-framework.git"
echo "   git push -u origin main"
echo
echo "3. Tu repositorio estará listo para usar con cualquier IA"
echo
echo "========================================"
echo "   EJEMPLO DE USO:"
echo "========================================"
echo
echo "Copia este prompt en cualquier IA:"
echo
echo 'Genera una aplicación completa siguiendo las especificaciones del repositorio:'
echo 'https://github.com/[tu-usuario]/x21a-framework'
echo
echo 'Quiero que lo generes en la siguiente ruta: /tu/ruta/proyecto'
echo
echo 'Nombre del proyecto: sistema-biblioteca'
echo 'Entidad principal: Libro'
echo 'Campos: titulo, autor, isbn, precio, stock, categoria'
echo
echo "========================================"