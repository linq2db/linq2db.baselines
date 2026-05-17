-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two", i."Three") >= (i."One", i."One" * 2, i."Four" - 1)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two", i."Four") >= (i."One", i."Two", i."Three")

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two", i."Four") >= (i."One", i."Five", i."Three")

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Nil", i."Four") >= (i."One", i."Two", i."Three")

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(2, NULL, 3) >= (i."One", i."Two", i."Three")

