BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			1 = c_1.ParentID
	)
FROM table(set{1})

