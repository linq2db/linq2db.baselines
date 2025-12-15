-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two", i."Three") IS NULL

-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Nil", NULL) IS NULL

-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."Nil", NULL) IS NULL

