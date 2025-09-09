BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @r3 Int32
SET     @r3 = 3

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two", i."Three") = ((i."One", i."One" * 2, :r3))

