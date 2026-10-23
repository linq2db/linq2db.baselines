-- PostgreSQL.9.3 PostgreSQL
SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two", i."Three") IS NOT NULL

-- PostgreSQL.9.3 PostgreSQL
SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Nil", NULL) IS NOT NULL

-- PostgreSQL.9.3 PostgreSQL
SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."Nil", NULL) IS NOT NULL

