# Guía de Instalación y Configuración para el Desafío

 Este `README` proporciona instrucciones básicas para la instalación de herramientas necesarias y la configuración de una máquina virtual con Vagrant. Incluye la instalación de herramientas como Docker, Jenkins, y otros.

## Configuración de Vagrant :

En el directorio de tu proyecto, encontrarás una carpeta llamada "Vagrant". Esta carpeta contiene la configuración necesaria para levantar una máquina virtual.

1. **Iniciar la Máquina Virtual**:  Ejecuta el siguiente comando dentro del directorio "Vagrant":
   ```bash
   vagrant up
   ```
2. **Conexión SSH**:  Para conectarte a la máquina virtual por SSH, utiliza el siguiente comando:
   ```bash
   vagrant ssh
   ```
3. **Túnel a la Máquina Host**: Puedes crear un túnel desde la máquina virtual a tu máquina host para acceder a servicios que se ejecuten en la VM desde el host. Utiliza el siguiente comando para configurar el túnel:
   ```bash
   vagrant ssh -- -L 8082:localhost:8082
   ```

## Paso 1: Linux
1. **Divisar Arbol de directorios**: Ejecuta el siguiente comando desde el directorio home del usuario vagrant (donde te encuentras por defecto):":
   ```bash
   tree Documentos
   ```

## Paso 2: Bash
Para ejecutar ahora los scripts debemos ubicarnos en el la siguiente dirección
 `Documentos/Proyectos/BlogPersonal/artículos`

1. **Ejecutar buscar_palabra**: Para ejecutar el script `buscar_palabra.sh`, debemos usar el comando:
   ```bash
   ./buscar_palabra.sh Hola
   ```
   (‘Hola’ es la palabra que el script buscará en los archivos.)



2. **Ejecutar menu**:Para ejecutar el script `menu.sh, debemos usar el comando:
   ```bash
   ./menu
   ```
 Al ejecutar el script `menu.sh`, se mostrará un menú con las siguientes opciones:
 
   1.`Ver la lista de archivos`: Muestra todos los archivos en el directorio actual.

   2.`Copiar un archivo`: Permite copiar un archivo especificado a una nueva ubicación.

   3.`Eliminar un archivo`: Permite eliminar un archivo especificado del directorio.
  
   4.`Salir: Cierra el menú` y termina el script.


3. **Ejecutar buscar_replazar.sh**: Para ejecutar el `script menu.sh`, debemos usar el comando:
   ```bash
   ./buscar_remplazar.sh archivo.txt "ejemplo" "demostración"
   ```
   (Donde “ejemplo” es la palabra a reemplazar por “demostración”)



 ## Paso 3: Docker
1. **Crear imagen de manera manual**: Debemos situarnos en el directorio `home/vagrant/Challenge-DEVOPS/Docker`y debemos usar el siguiente comando:
     ```bash
      docker build -t website-apache:1.0 .
     ```

2. **Correr la imagen**: Ejecutamos el siguiente comando:
   ```bash
   docker run -d -p 8082:80 --name mi-contenedor-website-apache website-apache:1.0
   ```
   
3. **Descargar imagen manualmente**: Para descargar la imagen alojada en un repositorio de dockerhub, debemos ejecutar el siguiente comando:
   ```bash
   docker pull fcongedo/website-desafio:1
   ```

2. **Correr la imagen**: Ejecutamos el siguiente comando:
   ```bash
   docker run -d -p 8082:80 --name mi-contenedor-website-apache fcongedo/website-desafio:1
   ```



  ## Links

  ### Repositorio de Imágenes de Docker

El [Repositorio de imágenes de Docker](https://hub.docker.com/r/fcongedo/website-desafio) en Docker Hub contiene las imágenes necesarias para el desafío. En esta página, podrás:

- Ver información sobre las imágenes disponibles.
- Consultar las versiones y etiquetas de las imágenes.
- Encontrar instrucciones para la descarga y uso de las imágenes.

Asegúrate de revisar la documentación en la página del repositorio para obtener detalles adicionales y actualizaciones sobre las imágenes.



## Archivos PDF Disponibles

En el repositorio de Docker también encontrarás dos archivos PDF importantes:

- **`Challenge DEVOPS.pdf`**: Contiene las consignas del desafío.
- **`Instructivo-challenge-DEVOPS.pdf`**: Es un instructivo paso a paso para la resolución del desafío.

Estos documentos te proporcionarán toda la información necesaria para comprender y completar el desafío con éxito.