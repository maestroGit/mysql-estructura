--TIENDA
-- 1 Llista el nom de tots els productos que hi ha en la taula producto.
SELECT nombre FROM producto;
-- 2 Llista els noms i els preus de tots els productos de la taula producto.
SELECT nombre,precio FROM producto;
-- 3 Llista totes les columnes de la taula producto.
SELECT * FROM producto;
-- 4 Llista el nom dels productos, el preu en euros i el preu en dòlars estatunidencs (USD).
SELECT nombre, precio AS euros, precio*1.27 FROM producto;
-- 5 Llista el nom dels productos, el preu en euros i el preu en dòlars estatunidencs (USD). Utilitza els següents àlies per a les columnes: nom de producto, euros, dolars.
SELECT nombre AS nombre_del_producto, precio AS euros, precio*1.27 AS dólares FROM producto;
-- 6 Llista els noms i els preus de tots els productos de la taula producto, convertint els noms a majúscula.
SELECT UPPER(nombre) FROM producto;
-- 7 Llista els noms i els preus de tots els productos de la taula producto, convertint els noms a minúscula.
SELECT LOWER(nombre),precio FROM producto;
-- 8 Llista el nom de tots els fabricants en una columna, i en una altra columna obtingui en majúscules els dos primers caràcters del nom del fabricant.
SELECT nombre, UPPER(LEFT(nombre,2)) FROM fabricante;
-- 9 Llista els noms i els preus de tots els productos de la taula producto, arrodonint el valor del preu.
SELECT nombre, ROUND(precio) FROM producto;
-- 10 Llista els noms i els preus de tots els productos de la taula producto, truncant el valor del preu per a mostrar-lo sense cap xifra decimal.
SELECT nombre,FLOOR(precio) FROM producto;
--11 Llista el codi dels fabricants que tenen productos en la taula producto.
SELECT codigo_fabricante AS 'codi fabricants' FROM producto;
--12 Llista el codi dels fabricants que tenen productos en la taula producto, eliminant els codis que apareixen repetits.
SELECT DISTINCT codigo_fabricante AS 'codi fabricants' FROM producto;
--13 Llista els noms dels fabricants ordenats de manera ascendent.
SELECT nombre FROM fabricante ORDER BY nombre ASC;
--14 Llista els noms dels fabricants ordenats de manera descendent.
SELECT nombre FROM fabricante ORDER BY nombre DESC;
--15 Llista els noms dels productos ordenats en primer lloc pel nom de manera ascendent i en segon lloc pel preu de manera descendent.
SELECT nombre FROM producto ORDER BY nombre ASC, nombre DESC;
--16 Retorna una llista amb les 5 primeres files de la taula fabricante.
SELECT * FROM fabricante LIMIT 5;
--17 Retorna una llista amb 2 files a partir de la quarta fila de la taula fabricante. La quarta fila també s'ha d'incloure en la resposta.
SELECT * FROM fabricante LIMIT 3,2;
-- 18 Llista el nom i el preu del producto més barat. (Utilitzi solament les clàusules ORDER BY i LIMIT). NOTA: Aquí no podria usar MIN(preu), necessitaria GROUP BY
SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;
-- 19 Llista el nom i el preu del producto més car. (Utilitzi solament les clàusules ORDER BY i LIMIT). NOTA: Aquí no podria usar MAX(preu), necessitaria GROUP BY.
SELECT nombre, precio ROM producto ORDER BY precio DESC LIMIT 1;
-- 20 Llista el nom de tots els productos del fabricant el codi de fabricant del qual és igual a 2.
SELECT nombre FROM producto WHERE codigo_fabricante = 2;
-- 21 Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades.
SELECT  producto.nombre, producto.precio, fabricante.nombre AS fabricante FROM producto , fabricante WHERE fabricante.codigo = producto.codigo_fabricante;
-- 22 Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades. Ordeni el resultat pel nom del fabricador, per ordre alfabètic.
SELECT  producto.nombre, producto.precio, fabricante.nombre AS fabricante FROM producto , fabricante WHERE fabricante.codigo = producto.codigo_fabricante ORDER BY fabricante.nombre;
-- 23 Retorna una llista amb el codi del producte, nom del producte, codi del fabricador i nom del fabricador, de tots els productes de la base de dades.
SELECT producto.codigo, producto.nombre, producto.codigo_fabricante, fabricante.nombre FROM producto, fabricante;
-- 24 Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més barat.
SELECT producto.nombre, MIN(producto.precio), fabricante.nombre FROM producto, fabricante WHERE fabricante.codigo = producto.codigo_fabricante;
-- 25 Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més car.
SELECT producto.nombre, MAX(producto.precio), fabricante.nombre FROM producto, fabricante WHERE fabricante.codigo = producto.codigo_fabricante;
-- 26 Retorna una llista de tots els productes del fabricador Lenovo.
SELECT * FROM producto, fabricante WHERE fabricante.nombre='Lenovo';
-- 27 Retorna una llista de tots els productes del fabricant Crucial que tinguin un preu major que 200€.
SELECT * FROM producto, fabricante WHERE fabricante.nombre='Crucial' AND precio>200;
-- 28 Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packardy Seagate. Sense utilitzar l'operador IN.
-- 29 Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packardy Seagate. Utilitzant l'operador IN.
-- 30 Retorna un llistat amb el nom i el preu de tots els productes dels fabricants el nom dels quals acabi per la vocal e.
-- 31 Retorna un llistat amb el nom i el preu de tots els productes el nom de fabricant dels quals contingui el caràcter w en el seu nom.
-- 32 Retorna un llistat amb el nom de producte, preu i nom de fabricant, de tots els productes que tinguin un preu major o igual a 180€. Ordeni el resultat en primer lloc pel preu (en ordre descendent) i en segon lloc pel nom (en ordre ascendent)
-- 33 Retorna un llistat amb el codi i el nom de fabricant, solament d'aquells fabricants que tenen productes associats en la base de dades.
-- 34 Retorna un llistat de tots els fabricants que existeixen en la base de dades, juntament amb els productes que té cadascun d'ells. El llistat haurà de mostrar també aquells fabricants que no tenen productes associats.
-- 35 Retorna un llistat on només apareguin aquells fabricants que no tenen cap producte associat.
-- 36 Retorna tots els productes del fabricador Lenovo. (Sense utilitzar INNER JOIN).
-- 37 Retorna totes les dades dels productes que tenen el mateix preu que el producte més car del fabricador Lenovo. (Sense utilitzar INNER JOIN).
-- 38 Llista el nom del producte més car del fabricador Lenovo.
SELECT producto.nombre, MAX(producto.precio) FROM producto, fabricante WHERE fabricante.nombre='Lenovo';
-- 39 Llista el nom del producte més barat del fabricant Hewlett-Packard.
-- 40 Retorna tots els productes de la base de dades que tenen un preu major o igual al producte més car del fabricador Lenovo.
-- 41 Llesta tots els productes del fabricador Asus que tenen un preu superior al preu mitjà de tots els seus productes.

-- UNIVERSIDAD
--1 Retorna un llistat amb el primer cognom, segon cognom i el nom de tots els alumnes. El llistat haurà d'estar ordenat alfabèticament de menor a major pel primer cognom, segon cognom i nom.
SELECT apellido1, apellido2, nombre FROM persona ORDER BY apellido1 ASC, apellido2, nombre;
--2 Esbrina el nom i els dos cognoms dels alumnes que no han donat d'alta el seu número de telèfon en la base de dades.
SELECT apellido1, apellido2, nombre FROM persona WHERE telefono IS NULL;
--3 Retorna el llistat dels alumnes que van néixer en 1999.
SELECT * FROM persona WHERE fecha_nacimiento BETWEEN '1999-01-01' AND '1999-12-31';
--4 Retorna el llistat de professors que no han donat d'alta el seu número de telèfon en la base de dades i a més la seva nif acaba en K.
SELECT * FROM persona WHERE tipo='profesor' AND telefono IS NULL AND nif LIKE '%K%';
--5 Retorna el llistat de les assignatures que s'imparteixen en el primer quadrimestre, en el tercer curs del grau que té l'identificador 7.
SELECT * FROM asignatura WHERE cuatrimestre=1 AND id_grado=7 AND curso=3;
--6 Retorna un llistat dels professors juntament amb el nom del departament al qual estan vinculats. El llistat ha de retornar quatre columnes, primer cognom, segon cognom, nom i nom del departament. El resultat estarà ordenat alfabèticament de menor a major pels cognoms i el nom.
SELECT persona.apellido1, persona.apellido2, persona.nombre, departamento.nombre AS departamento FROM departamento, profesor INNER JOIN persona ON persona.id = profesor.id_profesor;
--7 llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de l'alumne amb nif 26902806M.
SELECT asignatura.nombre, curso_escolar.anyo_inicio, curso_escolar.anyo_fin FROM persona INNER JOIN alumno_se_matricula_asignatura ON persona.id = alumno_se_matricula_asignatura.id_alumno INNER JOIN asignatura ON alumno_se_matricula_asignatura.id_asignatura = asignatura.id INNER JOIN curso_escolar ON alumno_se_matricula_asignatura.id_curso_escolar = curso_escolar.id WHERE persona.nif = '26902806M';
--8 Retorna un llistat amb el nom de tots els departaments que tenen professors que imparteixen alguna assignatura en el Grau en Enginyeria Informàtica (Pla 2015) -id=4-.
SELECT departamento.nombre AS departamento FROM departamento, profesor INNER JOIN asignatura ON profesor.id_profesor = asignatura.id_profesor WHERE id_grado = 4;
--9 Retorna un llistat amb tots els alumnes que s'han matriculat en alguna assignatura durant el curs escolar 2018/2019.
SELECT * FROM persona INNER JOIN alumno_se_matricula_asignatura on persona.id=alumno_se_matricula_asignatura.id_alumno;
-- Resolgui les 6 següents consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.
--10 llistat amb els noms de tots els professors i els departaments que tenen vinculats. El llistat també ha de mostrar aquells professors que no tenen cap departament associat. El llistat ha de retornar quatre columnes, nom del departament, primer cognom, segon cognom i nom del professor. El resultat estarà ordenat alfabèticament de menor a major pel nom del departament, cognoms i el nom.
SELECT departamento.nombre, persona.apellido1, persona.apellido2, persona.nombre FROM persona INNER JOIN profesor ON persona.id = profesor.id_profesor LEFT JOIN departamento ON profesor.id_departamento = departamento.id ORDER BY departamento.nombre, persona.apellido1, persona.apellido2, persona.nombre;
--11 Retorna un llistat amb els professors que no estan associats a un departament.
SELECT * FROM persona RIGHT JOIN profesor ON persona.id = profesor.id_profesor WHERE id_departamento = 5;
--12 Retorna un llistat amb els departaments que no tenen professors associats.
SELECT departamento.nombre AS departamento FROM departamento, profesor RIGHT JOIN asignatura ON profesor.id_profesor = asignatura.id_profesor WHERE asignatura.id_profesor IS NULL;
--13 Retorna un llistat amb els professors que no imparteixen cap assignatura.
SELECT persona.id, persona.nombre, persona.apellido1, asignatura.nombre AS asignatura FROM persona LEFT JOIN asignatura ON persona.id = asignatura.id_profesor WHERE asignatura.nombre IS NULL;
--14 Retorna un llistat amb les assignatures que no tenen un professor assignat.
SELECT asignatura.nombre AS asignatura_sin_profesor FROM asignatura WHERE asignatura.id_profesor IS NULL;
--15 llistat amb tots els departaments que no han impartit assignatures en cap curs escolar.
--16 Retorna el nombre total d'alumnes que hi ha.
SELECT COUNT(*) FROM persona WHERE tipo = 'alumno' AND sexo = 'm';
--17 Calcula quants alumnes van néixer en 1999.
SELECT COUNT(*) FROM persona WHERE persona.fecha_nacimiento BETWEEN '1999-01-31' AND '1999-12-31';
--18 Calcula quants professors hi ha en cada departament. El resultat només ha de mostrar dues columnes, una amb el nom del departament i una altra amb el nombre de professors que hi ha en aquest departament. El resultat només ha d'incloure els departaments que tenen professors associats i haurà d'estar ordenat de major a menor pel nombre de professors.
SELECT departamento.nombre, COUNT(profesor.id_profesor) FROM departamento INNER JOIN profesor ON departamento.id = profesor.id_departamento GROUP BY departamento.id ORDER BY 2 DESC;
--19 Retorna un llistat amb tots els departaments i el nombre de professors que hi ha en cadascun d'ells. Tingui en compte que poden existir departaments que no tenen professors associats. Aquests departaments també han d'aparèixer en el llistat.
--20 Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun. Tingui en compte que poden existir graus que no tenen assignatures associades. Aquests graus també han d'aparèixer en el llistat. El resultat haurà d'estar ordenat de major a menor pel nombre d'assignatures.
--21 Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun, dels graus que tinguin més de 40 assignatures associades.
--22 Retorna un llistat que mostri el nom dels graus i la suma del nombre total de crèdits que hi ha per a cada tipus d'assignatura. El resultat ha de tenir tres columnes: nom del grau, tipus d'assignatura i la suma dels crèdits de totes les assignatures que hi ha d'aquest tipus.
--23 Retorna un llistat que mostri quants alumnes s'han matriculat d'alguna assignatura en cadascun dels cursos escolars. El resultat haurà de mostrar dues columnes, una columna amb l'any d'inici del curs escolar i una altra amb el nombre d'alumnes matriculats.
--24 Retorna un llistat amb el nombre d'assignatures que imparteix cada professor. El llistat ha de tenir en compte aquells professors que no imparteixen cap assignatura. El resultat mostrarà cinc columnes: id, nom, primer cognom, segon cognom i nombre d'assignatures. El resultat estarà ordenat de major a menor pel nombre d'assignatures.
--25 Retorna totes les dades de l'alumne més jove.
SELECT * FROM persona WHERE persona.tipo = 'alumno' AND persona.fecha_nacimiento = (SELECT MAX(fecha_nacimiento) FROM persona WHERE tipo = 'alumno');
--26 Retorna un llistat amb els professors que no estan associats a un departament.
SELECT * FROM persona WHERE persona.tipo='profesor' AND NOT EXISTS (SELECT * FROM profesor INNER JOIN departamento ON profesor.id_profesor = departamento.id);
--27 Retorna un llistat amb els departaments que no tenen professors associats.
SELECT * FROM departamento AND NOT EXISTS (SELECT departamento.nombre FROM departamento INNER JOIN profesor ON departamento.id = profesor.id_profesor);
--28 Retorna un llistat amb els professors que tenen un departament associat i que no imparteixen cap assignatura.
SELECT * FROM profesor INNER JOIN persona ON profesor.id_profesor = persona.id WHERE profesor.id_profesor NOT IN (  SELECT id_profesor  FROM asignatura  WHERE id_profesor IS NOT NULL);
--29 Retorna un llistat amb les assignatures que no tenen un professor assignat.
SELECT * FROM asignatura WHERE NOT EXISTS ( SELECT * FROM profesor WHERE profesor.id_profesor = asignatura.id_profesor);
--30 Retorna un llistat amb tots els departaments que no han impartit assignatures en cap curs escolar.
SELECT * FROM departamento INNER JOIN profesor ON departamento.id = profesor.id_departamento WHERE NOT EXISTS ( SELECT *  FROM asignatura  WHERE profesor.id_profesor = asignatura.id_profesor);