-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 5

SELECT
	COUNT(*)
FROM
	(
		SELECT FIRST @take
			1 as c1
		FROM
			Child t1
	) t2

