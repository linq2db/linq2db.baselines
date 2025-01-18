BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @r3 Integer -- Int32
SET     @r3 = 1

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two", i."Three") = (i."One", i."One" * 2, :r3)

