BeforeExecute
-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT FIRST @take DISTINCT
	t1."Value"
FROM
	TakeSkipClass t1

