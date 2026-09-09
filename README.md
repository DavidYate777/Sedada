<div align="center">

# SEDADA

### Sistema de Gestión Integral para Restaurantes

Aplicación web desarrollada en **Java 17**, utilizando el patrón de arquitectura **Modelo–Vista–Controlador (MVC)** y tecnologías orientadas al desarrollo web, gestión de bases de datos y ejecución de aplicaciones Java.

<br>

<a href="https://www.java.com/">
<img src="https://img.shields.io/badge/Java%2017-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white" alt="Java 17">
</a>

<a href="https://netbeans.apache.org/">
<img src="https://img.shields.io/badge/Apache%20NetBeans-1B6AC6?style=for-the-badge&logo=apache-netbeans-ide&logoColor=white" alt="Apache NetBeans">
</a>

<a href="https://www.postgresql.org/">
<img src="https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white" alt="PostgreSQL">
</a>

<a href="https://supabase.com/">
<img src="https://img.shields.io/badge/Supabase-3ECF8E?style=for-the-badge&logo=supabase&logoColor=white" alt="Supabase">
</a>

<a href="https://www.mysql.com/">
<img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
</a>

<a href="https://glassfish.org/">
<img src="https://img.shields.io/badge/GlassFish-2C2255?style=for-the-badge&logo=glassfish&logoColor=white" alt="GlassFish">
</a>

<a href="https://jakarta.ee/">
<img src="https://img.shields.io/badge/JSP-6DB33F?style=for-the-badge" alt="JSP">
</a>

<a href="https://git-scm.com/">
<img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white" alt="Git">
</a>

<br><br>

<img src="https://img.shields.io/badge/Architecture-MVC-6DB33F?style=flat-square" alt="MVC Architecture">

<img src="https://img.shields.io/badge/Status-En%20desarrollo-orange?style=flat-square" alt="Project Status">

<img src="https://img.shields.io/badge/Platform-Web-blue?style=flat-square" alt="Web Platform">

<img src="https://img.shields.io/badge/License-MIT-yellow?style=flat-square" alt="MIT License">

</div>

---

## Descripción

**SEDADA** es un sistema web orientado a la gestión integral de restaurantes.

El proyecto está desarrollado principalmente en **Java 17** y utiliza el patrón de arquitectura **Modelo–Vista–Controlador (MVC)** para organizar sus diferentes componentes.

La aplicación integra tecnologías de desarrollo web, bases de datos relacionales y herramientas de servidor para proporcionar una solución orientada a la administración de información de establecimientos gastronómicos.

El proyecto se encuentra actualmente en **desarrollo y evolución**.

---

## Tecnologías utilizadas

<div align="center">

### Lenguaje de programación

<a href="https://www.java.com/">
<img src="https://img.shields.io/badge/Java%2017-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white" alt="Java 17">
</a>

</div>

**Java 17** es el lenguaje principal utilizado para el desarrollo de SEDADA.

El proyecto aplica conceptos de:

* Programación orientada a objetos.
* Clases y objetos.
* Encapsulamiento.
* Herencia.
* Polimorfismo.
* Separación de responsabilidades.

---

<div align="center">

### Entorno de desarrollo

<a href="https://netbeans.apache.org/">
<img src="https://img.shields.io/badge/Apache%20NetBeans-1B6AC6?style=for-the-badge&logo=apache-netbeans-ide&logoColor=white" alt="Apache NetBeans">
</a>

</div>

**Apache NetBeans** es el entorno de desarrollo utilizado para la creación, organización, compilación y ejecución del proyecto.

---

<div align="center">

### Desarrollo web

<a href="https://jakarta.ee/">
<img src="https://img.shields.io/badge/JSP-6DB33F?style=for-the-badge" alt="JSP">
</a>

<a href="https://developer.mozilla.org/es/docs/Web/HTML">
<img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white" alt="HTML5">
</a>

<a href="https://developer.mozilla.org/es/docs/Web/CSS">
<img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white" alt="CSS3">
</a>

</div>

Las tecnologías web utilizadas permiten construir y presentar la interfaz de usuario de la aplicación.

* **JSP:** generación de vistas dinámicas.
* **HTML5:** estructura de las páginas.
* **CSS3:** diseño y estilos de las interfaces.

---

<div align="center">

### Arquitectura

<img src="https://img.shields.io/badge/MVC-Model%20View%20Controller-6DB33F?style=for-the-badge" alt="MVC">

</div>

SEDADA utiliza el patrón **Modelo–Vista–Controlador (MVC)** como arquitectura principal.

```text
                    SEDADA
                       |
        +--------------+--------------+
        |              |              |
        v              v              v
     MODELO          VISTA       CONTROLADOR
        |              |              |
        +--------------+--------------+
                       |
                       v
                 BASE DE DATOS
```

Esta arquitectura permite mantener una organización estructurada del código y separar las responsabilidades de los diferentes componentes.

---

## Bases de datos

<div align="center">

<a href="https://www.postgresql.org/">
<img src="https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white" alt="PostgreSQL">
</a>

<a href="https://supabase.com/">
<img src="https://img.shields.io/badge/Supabase-3ECF8E?style=for-the-badge&logo=supabase&logoColor=white" alt="Supabase">
</a>

<a href="https://www.mysql.com/">
<img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
</a>

</div>

El proyecto utiliza sistemas de gestión de bases de datos relacionales para el almacenamiento y administración de la información.

### PostgreSQL

PostgreSQL constituye la tecnología principal de base de datos utilizada en el proyecto.

### Supabase

Supabase se utiliza como plataforma relacionada con la infraestructura y gestión de PostgreSQL.

### MySQL

MySQL forma parte del entorno tecnológico utilizado durante el desarrollo y las pruebas.

### JDBC

**JDBC (Java Database Connectivity)** permite establecer la comunicación entre la aplicación Java y las bases de datos.

---

## Servidor de aplicaciones

<div align="center">

<a href="https://glassfish.org/">
<img src="https://img.shields.io/badge/GlassFish-2C2255?style=for-the-badge&logo=glassfish&logoColor=white" alt="GlassFish">
</a>

</div>

**GlassFish** se utiliza como servidor de aplicaciones para ejecutar el proyecto web desarrollado en Java.

---

## Herramientas

<div align="center">

<a href="https://git-scm.com/">
<img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white" alt="Git">
</a>

<a href="https://github.com/">
<img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub">
</a>

<a href="https://www.google.com/chrome/">
<img src="https://img.shields.io/badge/Google%20Chrome-4285F4?style=for-the-badge&logo=googlechrome&logoColor=white" alt="Google Chrome">
</a>

</div>

| Herramienta     | Utilización                             |
| --------------- | --------------------------------------- |
| Git             | Control de versiones                    |
| GitHub          | Gestión y alojamiento del código fuente |
| Google Chrome   | Pruebas y validación de la aplicación   |
| Apache NetBeans | Desarrollo del proyecto                 |
| GlassFish       | Ejecución de la aplicación web          |

---

## Áreas principales

SEDADA está orientado a la gestión de diferentes áreas de un restaurante:

* Usuarios.
* Productos.
* Mesas.
* Pedidos.
* Facturación.
* Roles y permisos.
* Administración de información.

La implementación y evolución de estas áreas continúa durante el desarrollo del proyecto.

---

## Características técnicas

* Java 17.
* Programación orientada a objetos.
* Arquitectura MVC.
* JSP.
* HTML5.
* CSS3.
* JDBC.
* PostgreSQL.
* Supabase.
* MySQL.
* GlassFish.
* Apache NetBeans.
* Git y GitHub.
* jBCrypt para el manejo de contraseñas.

---

## Requisitos

Para trabajar con el proyecto se recomienda disponer de:

<a href="https://www.java.com/">
<img src="https://img.shields.io/badge/JDK%2017-ED8B00?style=flat-square&logo=openjdk&logoColor=white" alt="JDK 17">
</a>

<a href="https://netbeans.apache.org/">
<img src="https://img.shields.io/badge/Apache%20NetBeans-1B6AC6?style=flat-square&logo=apache-netbeans-ide&logoColor=white" alt="Apache NetBeans">
</a>

<a href="https://glassfish.org/">
<img src="https://img.shields.io/badge/GlassFish-2C2255?style=flat-square&logo=glassfish&logoColor=white" alt="GlassFish">
</a>

<a href="https://www.postgresql.org/">
<img src="https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white" alt="PostgreSQL">
</a>

<a href="https://git-scm.com/">
<img src="https://img.shields.io/badge/Git-F05032?style=flat-square&logo=git&logoColor=white" alt="Git">
</a>

---

## Instalación

Clonar el repositorio:

```bash
git clone https://github.com/TU-USUARIO/SEDADA.git
```

Abrir el proyecto utilizando **Apache NetBeans** y verificar la configuración del **JDK 17**.

Posteriormente, configurar el servidor de aplicaciones y los parámetros correspondientes de la base de datos según el entorno de desarrollo.

---

## Seguridad

El proyecto contempla prácticas orientadas a mejorar la seguridad de la aplicación, entre ellas:

* Hashing de contraseñas mediante jBCrypt.
* Gestión de acceso basada en roles.
* Protección de información de conexión.
* Validación de datos.
* Separación de responsabilidades mediante MVC.

Las características de seguridad continúan en proceso de implementación y mejora.

---

## Estado del proyecto

<div align="center">

<img src="https://img.shields.io/badge/STATUS-EN%20DESARROLLO-orange?style=for-the-badge" alt="En desarrollo">

</div>

SEDADA se encuentra actualmente en desarrollo.

El proyecto continúa evolucionando mediante la implementación de nuevas funcionalidades, mejoras de arquitectura, optimización de la interfaz y fortalecimiento de la seguridad.

---

## Autor

<div align="center">

### Luis David Yate Pulido

Estudiante de Desarrollo de Software

</div>

Proyecto desarrollado con fines académicos y de aprendizaje, aplicando conocimientos de programación, desarrollo web, bases de datos, arquitectura MVC y programación orientada a objetos.

---

## Licencia

Este proyecto está distribuido bajo la licencia **MIT**.

Consulta el archivo [LICENSE](LICENSE) para conocer los términos y condiciones de uso.

---

<div align="center">

# SEDADA

### Sistema de Gestión Integral para Restaurantes

<br>

<a href="https://github.com/TU-USUARIO/SEDADA">
<img src="https://img.shields.io/badge/GitHub-Repository-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub Repository">
</a>

<br><br>

<img src="https://img.shields.io/badge/Java-17-ED8B00?style=flat-square&logo=openjdk&logoColor=white" alt="Java">

<img src="https://img.shields.io/badge/MVC-Architecture-6DB33F?style=flat-square" alt="MVC">

<img src="https://img.shields.io/badge/PostgreSQL-Database-4169E1?style=flat-square&logo=postgresql&logoColor=white" alt="PostgreSQL">

<img src="https://img.shields.io/badge/GlassFish-Server-2C2255?style=flat-square&logo=glassfish&logoColor=white" alt="GlassFish">

</div>
