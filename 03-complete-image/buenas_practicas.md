# Buenas practicas en los dockerfiles
- Deben ser efímeros, es decir que se debe poder destruir con facilidad.
- Debe haber un solo servicio por imagen (el CMD).
- De tener archivos pesados en la carpeta, agregarlos a .dockerignore para no sumar peso.
- Mantener el mínimo de capas.
- Es preferible una única instrucción con varios parámetros que varias con pocos (con \ indicamos que varias lineas conforman el mismo comando).
- No instalar paquetes innecesarios "por las dudas".
- Utilizar labels.
