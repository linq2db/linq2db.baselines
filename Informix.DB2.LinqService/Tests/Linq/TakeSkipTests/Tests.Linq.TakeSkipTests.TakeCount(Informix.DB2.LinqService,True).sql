BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	(
		SELECT FIRST 5
			*
		FROM
			Child t1
	) t2

