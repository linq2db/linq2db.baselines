BeforeExecute
-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 5

SELECT
	COUNT(*)
FROM
	(
		SELECT FIRST @take
			*
		FROM
			Child t1
	) t2

