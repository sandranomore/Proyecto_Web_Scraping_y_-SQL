# Proyecto_Web_Scraping_y_SQL

Proyecto CinemExtract: Explorando el Séptimo Arte a través de Datos y Tecnología

Resumen
La plataforma de streaming BHO se encuentra en una búsqueda constante para mejorar la calidad de su contenido y la satisfacción de sus usuarios. Nuestro proyecto consiste en aplicar técnicas de análisis de datos para identificar cuáles son las películas y cortometrajes más populares y mejor valorados desde 1990 hasta la fecha. Esto ayudará a BHO a tomar decisiones informadas sobre qué contenido promocionar y destacar en su plataforma.

El objetivo es identificar las películas y cortos más populares en la plataforma BHO, basándonos en criterios como las calificaciones, el número de visualizaciones, y las reseñas de los usuarios. Analizar la evolución de las preferencias de los usuarios a lo largo de los años y determinar las tendencias en la industria cinematográfica. Proporcionar recomendaciones específicas para la promoción de contenido en las diferentes secciones de la plataforma.

Fase 1: Extracción de Datos de API de MoviesDataset En esta fase, usaremos la API de MoviesDataset, que contiene una gran cantidad de información sobre películas, incluyendo detalles como títulos, géneros, años de lanzamiento y más. Vuestra tarea será hacer solicitudes a esta API y extraer información relevante sobre las películas.

En concreto tendreis que sacar la siguiente información:

Películas entre 2015 y 2020 (ambos inclusive).
Películas que pertenezcan a los siguientes géneros: Drama, Comedy, Action,Fantasy, Horror, Mystery, Romance, Thriller.
De cada una de las películas tendreis que sacar la siguiente información:

Tipo (si es corto o película).
Nombre de la película o el corto.
Año de estreno de la película o corto.
Mes de estreno de la película o corto.
Id de la película.
La documentación a la API la encontrarás aquí. NOTA: La información de la API deberá ser almacenada en una lista de tuplas. Cada tupla corresponderá a una película. Siguiendo el siguiente ejemplo: [("Pelicula", "Titanic", 1997, 12, "abc123"), ("Pelicula", "Los Gonn
Fase 2: Extracción de Detalles de Películas con Selenium Una vez que tengan una lista de películas de la API, el siguiente paso es obtener información más detallada sobre ellas. Utilizaras la herramienta de automatización web Selenium para navegar a sitios web de reseñas de películas (IMDB) y extraer detalles como calificaciones, actores y directores. En concreto deberás extraer información sobre:

Puntuacion de IMDB (en caso de que la tenga).
Dirección (director/a o directore/as de cada película).
Gionistas (de cada película).
Argumento.
Duración (en minutos).
Nombre de la película NOTA: La información de la API deberá ser almacenada en una lista de tuplas. Cada tupla corresponderá a una película. Siguiendo el siguiente ejemplo:[(7.7, 77, "Richard Donner", ["Chris ColumbusSteven", "Spielberg"],
Fase 3: Extracción de Detalles de Actores con Selenium El siguiente paso es extraer información detallada de los 10 principales actores de cada una de las películas extraidas en la fase 1 utilizando Selenium (desde la página e IMDB). Debereis solo tener en cuenta los 10 primeros actores de cada película o corto (en caso de que los haya) La información que deberás extraer es:

Nombre.
Año nacimiento.
¿Por qué es conocido?
¿Qué hace?
Premios. NOTA: La información de la API deberá ser almacenada en una lista de tuplas. Cada tupla corresponderá a una película. Siguiendo el siguiente ejemplo:[("Adam Sadler", 1966, ["El aguador", "Little Nicky", "Un papá genia...]
Fase 4: Extracción de Tablas de los Premios Oscar con Beautiful Soup En esta fase, trabajarán con la biblioteca Beautiful Soup para extraer información relevante de las tablas de los premios Oscar entre 2015 y 2020. La tabla la encontrarás en el este link. La información que deberás sacar es:

Fecha de la ceremonia.
Mejor película.
Mejor director.
Mejor actor.
Mejor actriz. NOTA: La información de la API deberá ser almacenada en una lista de tuplas. Cada tupla corresponderá a una película. Siguiendo el siguiente ejemplo: [(1990, 'Driving Miss Daisy', 'O. Stone', "D. Day-Lewis",' J. Tand
Fase 5: Creación de una Base de Datos Una vez que hayas reunido toda la información necesaria, es hora de pensar en la organización. Usando SQL debes pensar en la estructura que debe tener la BBDD para almacenar toda la información recopilada y crear todas las tablas y conexiones entre ellas.

Fase 6: Inserción de Datos en la Base de Datos Una vez que tengas la estructura de la base de datos lista, debes insertar todos los datos en la BBDD diseñada en el paso anterior.

Fase 7: Realización de Consultas para Obtener Información Con los datos almacenados en la base de datos, debes realizar consultas SQL para recuperar información específica. Las preguntas que deberás contestar son:

¿Qué géneros han recibido más premios Óscar?
¿Qué género es el mejor valorado en IMDB?
¿En que año se estrenaron más películas?
¿En que año se estrenaron mas cortos?
¿Cuál es la mejor serie valorada en IMDB?
Objetivos

Consolidar los conocimientos de Python y SQL.

Utilizar control de versiones en equipo para aprender las ventajas y conflictos que genera.

Implementar Scrum como marco de referencia para el desarrollo del producto, basándonos siempre en los valores de Agile como puntos clave del trabajo en equipo y la mejora continua.

Mejorar la comunicación entre los miembros del equipo.

Mejorar vuestras habilidades de comunicación en público al exponer el proyecto en la sesión final.

Planificación del proyecto

3.1. sprints

Para la realización de este proyecto trabajaremos en 2 sprints (2 iteraciones). Siguiendo los principios ágiles, estableceremos pequeños ciclos iterativos de forma que al final de cada uno generemos valor perceptible por nuestros usuarios. Dedicaremos el primer día a la planificación del sprint (sprint planning) y el resto a trabajar en el desarrollo del proyecto. Al final de cada sprint haremos un Sprint Review del proyecto para presentar los resultados conseguidos y recogerfeedback.

3.2. Criterios de aceptación

Crear la infraestructura necesaria: repositorio en GitHub y con acceso para todos los miembros del equipo. Extraer datos de distintas fuentes de datos y creación de una Base de Datos. Tener la extracción de datos, creación de la Base de Datos e insercción de datos automatizada en funciones(obligatorio) y clases(optativo) tener en el repositorio de GitHub todo el código del desarrollo del proyecto.

3.3. Historias de usuario

Para la gestión del proyecto, usaremos historias de usuario. Las historias de usuario son descripciones breves y concretas de las funcionalidades o características que un usuario espera encontrar en un producto o sistema. Recordemos que, las historias de usuario son una herramienta importante para asegurarse de que el equipo de desarrollo (es decir, nosotras) entienda las necesidades de los usuarios y construya el producto de manera efectiva. Si bien estas historias de usuario puede resultar un poco complejas para el tema que nos ocupa, podemos definir unas historias de usuario más claras para este proyecto, estas pueden ser:

Seleccionar las herramientas con las que vamos a sacar los datos.
Decidir la estructura de la base de datos.
Insercción de los datos en la base de datos.
Realización de queries para contestar a las preguntas planteadas.
