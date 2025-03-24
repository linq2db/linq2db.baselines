﻿BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two") NOT IN ((1, i."One" * 2))

BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two", i."Three") NOT IN ((i."One", i."One" * 2, i."Four" - 1), (0, 7, 9), (NULL, -1, i."Four"))

BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Three", i."Four") NOT IN ((i."One", i."One" * 2, i."Four" - 1), (0, 7, 9), (NULL, 2, i."Four"))

BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two", i."Four") NOT IN ((i."One", i."One" * 2, i."Four" - 1), (0, 7, 9), (NULL, 2, i."Four"))

BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."Nil", i."Two", i."Four") NOT IN ((i."One", i."One" * 2, i."Four" - 1), (0, 7, 9), (NULL, 2, i."Four"))

