BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two") IN ((1, i."One" * 2))

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two", i."Three") IN ((i."One", i."One" * 2, i."Four" - 1), (0, 7, 9), (NULL, -1, i."Four"))

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two", i."Four") IN ((i."One", i."One" * 2, i."Four" - 1), (0, 7, 9), (NULL, 2, i."Four"))

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."Nil", i."Two", i."Four") IN ((i."One", i."One" * 2, i."Four" - 1), (0, 7, 9), (NULL, 2, i."Four"))

