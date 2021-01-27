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
/*
--11 Llista el codi dels fabricants que tenen productos en la taula producto.
--12 Llista el codi dels fabricants que tenen productos en la taula producto, eliminant els codis que apareixen repetits.
--13 Llista els noms dels fabricants ordenats de manera ascendent.
--14 Llista els noms dels fabricants ordenats de manera descendent.
--15 Llista els noms dels productos ordenats en primer lloc pel nom de manera ascendent i en segon lloc pel preu de manera descendent.
--16 Retorna una llista amb les 5 primeres files de la taula fabricante.
--17 Retorna una llista amb 2 files a partir de la quarta fila de la taula fabricante. La quarta fila també s'ha d'incloure en la resposta.
*/


-- UNIVERSIDAD
/*
Retorna un llistat amb el primer cognom, segon cognom i el nom de tots els alumnes. El llistat haurà d'estar ordenat alfabèticament de menor a major pel primer cognom, segon cognom i nom.
Esbrina el nom i els dos cognoms dels alumnes que no han donat d'alta el seu número de telèfon en la base de dades.
Retorna el llistat dels alumnes que van néixer en 1999.
Retorna el llistat de professors que no han donat d'alta el seu número de telèfon en la base de dades i a més la seva nif acaba en K.
Retorna el llistat de les assignatures que s'imparteixen en el primer quadrimestre, en el tercer curs del grau que té l'identificador 7.
Retorna un llistat dels professors juntament amb el nom del departament al qual estan vinculats. El llistat ha de retornar quatre columnes, primer cognom, segon cognom, nom i nom del departament. El resultat estarà ordenat alfabèticament de menor a major pels cognoms i el nom.
Retorna un llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de l'alumne amb nif 26902806M.
Retorna un llistat amb el nom de tots els departaments que tenen professors que imparteixen alguna assignatura en el Grau en Enginyeria Informàtica (Pla 2015).
Retorna un llistat amb tots els alumnes que s'han matriculat en alguna assignatura durant el curs escolar 2018/2019.
Resolgui les 6 següents consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.

Retorna un llistat amb els noms de tots els professors i els departaments que tenen vinculats. El llistat també ha de mostrar aquells professors que no tenen cap departament associat. El llistat ha de retornar quatre columnes, nom del departament, primer cognom, segon cognom i nom del professor. El resultat estarà ordenat alfabèticament de menor a major pel nom del departament, cognoms i el nom.
Retorna un llistat amb els professors que no estan associats a un departament.
Retorna un llistat amb els departaments que no tenen professors associats.
Retorna un llistat amb els professors que no imparteixen cap assignatura.
Retorna un llistat amb les assignatures que no tenen un professor assignat.
Retorna un llistat amb tots els departaments que no han impartit assignatures en cap curs escolar.
*/