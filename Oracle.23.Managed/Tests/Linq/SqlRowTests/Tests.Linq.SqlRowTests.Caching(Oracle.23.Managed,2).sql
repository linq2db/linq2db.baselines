-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @r3 Int32
SET     @r3 = 2

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two", i."Three") = ((i."One", i."One" * 2, :r3))

