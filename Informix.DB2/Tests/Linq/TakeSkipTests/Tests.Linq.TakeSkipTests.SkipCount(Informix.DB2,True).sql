-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT SKIP @skip
			1 as c1
		FROM
			Child t1
	) t2

