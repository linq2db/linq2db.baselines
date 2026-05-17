-- Informix.DB2 Informix

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			Parent t1
	),
	(
		SELECT
			COUNT(*)
		FROM
			Child t2
	)
FROM table(set{1})

