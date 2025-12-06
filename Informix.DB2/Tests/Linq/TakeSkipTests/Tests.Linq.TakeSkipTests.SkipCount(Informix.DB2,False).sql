-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	(
		SELECT SKIP 2
			*
		FROM
			Child t1
	) t2

