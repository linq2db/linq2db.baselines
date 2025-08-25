BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @r3 Integer(4) -- Int32
SET     @r3 = 3

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	ROW (i.One, i.Two, i.Three) = ROW (i.One, i.One * 2, @r3)

