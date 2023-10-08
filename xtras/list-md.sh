#!/bin/bash

# Ruta del archivo en el que se realizarán los cambios
archivo="../README.md"
# Eliminar contenido debajo de la última "___"
sed -i '/___/,$d' "$archivo"

echo "___" >> "$archivo"
echo "Notas de cada tema:" >> "$archivo"
for file in ../*/*.md; do
  path="$file"
  filename=$(basename "$file")
  filename="${filename%.*}"
  filename=$(echo "$filename" | awk '{print toupper(substr($0, 1, 1)) tolower(substr($0, 2))}' | sed 's/_/ /g')
  echo "- [$filename]($path)" >> "$archivo"
done