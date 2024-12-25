BeforeExecute
-- Informix.DB2 Informix

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child t1
	)
FROM table(set{1})

