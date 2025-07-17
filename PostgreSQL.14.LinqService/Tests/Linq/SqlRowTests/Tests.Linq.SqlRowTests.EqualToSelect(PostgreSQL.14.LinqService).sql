BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" x
WHERE
	(x."One", x."Two", x."Three") = (
		SELECT
			y."One",
			y."One" + 1,
			3
		FROM
			"Ints2" y
		WHERE
			y."Nil" IS NULL
	)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" x
WHERE
	(x."One", x."Two", x."Three") = (
		SELECT
			y."One",
			y."One" + 1,
			3
		FROM
			"Ints2" y
		WHERE
			y."Nil" IS NULL
	)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" x
WHERE
	(x."One", x."Two", x."Three") = (
		SELECT
			y."One",
			y."One" + 1,
			3
		FROM
			"Ints2" y
		WHERE
			y."Nil" IS NULL
	)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" x
WHERE
	(x."One", x."Two", x."Three") <> (
		SELECT
			y."One",
			y."One" + 1,
			4
		FROM
			"Ints2" y
		WHERE
			y."Nil" IS NULL
	)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" x
WHERE
	(x."One", x."Two", x."Three") <> (
		SELECT
			y."One",
			y."One" + 1,
			4
		FROM
			"Ints2" y
		WHERE
			y."Nil" IS NULL
	)

