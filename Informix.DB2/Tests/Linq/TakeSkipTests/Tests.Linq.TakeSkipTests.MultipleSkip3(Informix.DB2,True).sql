-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 6

SELECT SKIP @skip
	t1."Value"
FROM
	TakeSkipClass t1
ORDER BY
	t1."Value"

