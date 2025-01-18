BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" x,
	"Ints2" y
WHERE
	(x."One", x."Two", x."Three") = (y."One", y."One" + 1, 3) AND
	y."Nil" IS NULL

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" x,
	"Ints2" y
WHERE
	(x."One", x."Two", x."Three") = (y."One", y."One" + 1, 3) AND
	y."Nil" IS NULL

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" x,
	"Ints2" y
WHERE
	(y."One", y."One" + 1, 3) = (x."One", x."Two", x."Three") AND
	y."Nil" IS NULL

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" x,
	"Ints2" y
WHERE
	(x."One", x."Two", x."Three") <> (y."One", y."One" + 1, 4) AND
	y."Nil" IS NULL

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" x,
	"Ints2" y
WHERE
	(x."One", x."Two", x."Three") <> (y."One", y."One" + 1, 4) AND
	y."Nil" IS NULL

