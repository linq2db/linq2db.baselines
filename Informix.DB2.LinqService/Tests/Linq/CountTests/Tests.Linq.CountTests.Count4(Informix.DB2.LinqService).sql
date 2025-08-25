BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			Child t1
	)
FROM
	Parent p

