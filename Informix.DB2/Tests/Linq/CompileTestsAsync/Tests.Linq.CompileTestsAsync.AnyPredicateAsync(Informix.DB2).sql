BeforeExecute
--  Informix.DB2 Informix (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			AsyncDataTable c_1
		WHERE
			c_1.Id = 2
	)
FROM table(set{1})

