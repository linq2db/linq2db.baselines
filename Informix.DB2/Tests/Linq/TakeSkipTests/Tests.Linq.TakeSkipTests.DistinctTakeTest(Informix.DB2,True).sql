-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT FIRST @take DISTINCT
	r."Value"
FROM
	TakeSkipClass r

