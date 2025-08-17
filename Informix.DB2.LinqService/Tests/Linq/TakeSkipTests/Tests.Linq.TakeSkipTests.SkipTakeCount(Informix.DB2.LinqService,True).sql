BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @skip Integer(4) -- Int32
SET     @skip = 2
DECLARE @take Integer(4) -- Int32
SET     @take = 5

SELECT
	COUNT(*)
FROM
	(
		SELECT SKIP @skip FIRST @take
			*
		FROM
			Child t1
	) t2

