BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child t1
	)
FROM table(set{1})

