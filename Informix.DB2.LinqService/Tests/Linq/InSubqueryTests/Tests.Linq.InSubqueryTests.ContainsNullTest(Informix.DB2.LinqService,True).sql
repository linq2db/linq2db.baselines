BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Parent c_1
		WHERE
			c_1.Value1 IS NULL
	)
FROM table(set{1})

