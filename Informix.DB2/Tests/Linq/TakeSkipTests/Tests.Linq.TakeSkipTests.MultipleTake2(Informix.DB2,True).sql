-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 2

SELECT FIRST @take
	t1."Value"
FROM
	TakeSkipClass t1
ORDER BY
	t1."Value"

