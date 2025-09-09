BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Person t1
	)
FROM table(set{1})

