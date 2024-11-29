BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	(
		SELECT SKIP 2 FIRST 5
			1 as c1
		FROM
			Child t1
	) t2

