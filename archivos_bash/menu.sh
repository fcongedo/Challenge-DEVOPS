#!/bin/bash

# Función para mostrar el menú
mostrar_menu() {
  echo "Seleccione una opción:"
  echo "1. Ver la lista de archivos"
  echo "2. Copiar un archivo"
  echo "3. Eliminar un archivo"
  echo "4. Salir"
}

# Función para ver la lista de archivos
ver_lista_archivos() {
  echo "Lista de archivos en el directorio actual:"
  ls -l
}

# Función para copiar un archivo
copiar_archivo() {
  echo "Ingrese el nombre del archivo a copiar:"
  read archivo_original
  echo "Ingrese el destino para copiar el archivo:"
  read destino
  cp "$archivo_original" "$destino"
  echo "Archivo copiado exitosamente."
}

# Función para eliminar un archivo
eliminar_archivo() {
  echo "Ingrese el nombre del archivo a eliminar:"
  read archivo
  rm "$archivo"
  echo "Archivo eliminado exitosamente."
}

# Bucle principal del menú
while true; do
  mostrar_menu
  read opcion
  case $opcion in
    1)
      ver_lista_archivos
      ;;
    2)
      copiar_archivo
      ;;
    3)
      eliminar_archivo
      ;;
    4)
      echo "Saliendo..."
      exit 0
      ;;
    *)
      echo "Opción inválida. Intente de nuevo."
      ;;
  esac
done