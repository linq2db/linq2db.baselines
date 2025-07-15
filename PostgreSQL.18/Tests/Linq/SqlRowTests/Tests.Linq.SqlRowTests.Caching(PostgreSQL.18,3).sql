BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @r3 Integer -- Int32
SET     @r3 = 3

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two", i."Three") = (i."One", i."One" * 2, :r3)

