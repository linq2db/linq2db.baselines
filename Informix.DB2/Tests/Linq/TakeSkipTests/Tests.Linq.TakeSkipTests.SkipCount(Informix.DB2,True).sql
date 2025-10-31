-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT SKIP @skip
			*
		FROM
			Child t1
	) t2

