BeforeExecute
-- Informix.DB2 Informix

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			c_1.ParentID <= 3
	)
FROM table(set{1})

