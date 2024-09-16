USE bho;

-- 1.¿Qué géneros han recibido más premios Óscar?
SELECT genero, COUNT(*) AS total_premios
FROM oscars
INNER JOIN moviedatabase ON oscars.mejor_pelicula = moviedatabase.titulo
GROUP BY genero
ORDER BY total_premios DESC;

-- 2.¿Qué género es el mejor valorado en IMDB?
SELECT m.genero, AVG(i.puntuacion) AS puntuacion_media
FROM moviedatabase AS m
JOIN imdb AS i ON m.titulo = i.titulo
GROUP BY m.genero
ORDER BY puntuacion_media DESC
LIMIT 1;

-- 3.¿En qué años se estrenaron más películas?
SELECT año, COUNT(*) AS cantidad_peliculas
FROM moviedatabase
WHERE tipo = 'movie'
GROUP BY año
ORDER BY cantidad_peliculas DESC
LIMIT 3;

-- 4. ¿En que años se estrenaron mas cortos?
SELECT año, COUNT(*) AS cantidad_cortos
FROM moviedatabase
WHERE tipo = 'short'
GROUP BY año
ORDER BY cantidad_cortos DESC
LIMIT 3;

-- 5. ¿Cuales son las 10 mejores peliculas valoradas en IMDB?
SELECT m.titulo, m.puntuacion
FROM imdb m
JOIN moviedatabase md ON m.titulo = md.titulo
WHERE m.puntuacion NOT LIKE 'No info'
ORDER BY m.puntuacion DESC
LIMIT 10;

-- 6.¿Cuál es la película mejor valorada en IMDB?
SELECT i.titulo, i.director, i.puntuacion AS Mejor_Puntuacion
FROM imdb i
JOIN moviedatabase m ON i.titulo = m.titulo
WHERE m.tipo = 'movie'
AND i.puntuacion != 'No info'
ORDER BY i.puntuacion DESC
LIMIT 1;

-- 7.¿Qué actor/actriz ha recibido más premios?
SELECT nombre_actor, premios
FROM actores
WHERE premios = 103;

-- 8.¿Hay alguna actriz que haya recibido más de un premio Óscar?
SELECT mejor_actriz, COUNT(*) AS total_premios
FROM oscars
GROUP BY mejor_actriz
HAVING COUNT(*) > 1
ORDER BY total_premios DESC;

-- 8.1¿Hay algun actor que haya recibido más de un premio Óscar?
SELECT mejor_actor, COUNT(*) AS total_premios
FROM oscars
GROUP BY mejor_actor
HAVING COUNT(*) > 1
ORDER BY total_premios DESC;

-- 8.2 ¿Hay algun director que haya recibido más de un premio Óscar?
SELECT mejor_director, COUNT(*) AS total_premios
FROM oscars
GROUP BY mejor_director
HAVING COUNT(*) > 1
ORDER BY total_premios DESC;