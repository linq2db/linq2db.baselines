-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two") IN ((1, i."One" * 2))

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two", i."Three") IN ((i."One", i."One" * 2, i."Four" - 1), (0, 7, 9), (NULL, -1, i."Four"))

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two", i."Four") IN ((i."One", i."One" * 2, i."Four" - 1), (0, 7, 9), (NULL, 2, i."Four"))

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."Nil", i."Two", i."Four") IN ((i."One", i."One" * 2, i."Four" - 1), (0, 7, 9), (NULL, 2, i."Four"))

