BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 3
DECLARE @take Integer(4) -- Int32
SET     @take = 1

SELECT SKIP @skip FIRST @take
	t1.Id,
	t1."Value"
FROM
	TakeSkipClass t1
ORDER BY
	t1."Value"

