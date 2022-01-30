# migracion-gcp-Yilis-Ramirez
Práctica migración a la nube GCP: <b>Yilis Ramirez</b><br>

Project id: <b>migracion-gcp-yilis</b><br>

Este proyecto aborda diferentes apartados sobre como realizar una migración en la nube con Google.

<h3>SEGUNDA PARTE:</h3>
- Configuración: Crear una base de datos MySQL mediante CloudSQL

<ol>
  <li>Necesitarás crear una instancia de SQL y crear un usuario.</li>
  <li>Realizar copias de seguridad según la hora solicitada.</li>
  <li>Crear dos bases de datos con el nombre "google" y "cloud".</li>
  <li>Se deberá crear un bucket con la función Cloud Storage para exportar las bases de datos.</li>
  
  </ol>

<h3>TERCERA PARTE:</h3>
- Creación de un grupo de instancias con autoescalado
<ol>
  <li>Se necesitará crear una imágen personalizada, para ello deberás personalizar un disco de arranque desde la creación de una instancia.</li>
  <li>Crear una plantilla de instancia con la imagen personalizada anterior.</li>
  <li>Crear un grupo de instancias, desde la función <b>"Compute engine-> instance groups"</b><br>.</li>
  <li>Crear una máquina virtual por separado con la finalidad de simular una prueba de carga hacia la IP del grupo de instancias por medio de un script.</li>
</ol>
<h3>CUARTA PARTE:</h3>
- Desplegar una aplicación con la función App Engine Estándar, a través del repositorio: https://github.com/GoogleCloudPlatform/python-docs-samples/tree/master/ap
pengine/standard/cloudsql
<ol>
<li>Necesitarás actualizar el fichero <b>app.yaml</b><br> con la configuración de la segunda parte de la práctica, en el apartado <b>env_variables.</b><br></li>
<li>Comprobar que la URL funciona.</li>
<li>Desplegar la aplicación de nuevo con un servicio diferente y crea dos versiones, para luego distribuir el tráfico al 50% entre ellas</li>
 </ol>
<h3>QUINTA PARTE:</h3>
<ol>
<li>Se debera crear una red virtual, un bucket de almacenamiento en Cloud Storage, y una máquina virtual a través de una archivo de configuración de Terraform --> fichero<b>"main.tf"</b><br></li>
 </ol>
