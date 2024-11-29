BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				1
			FROM
				Child c_1
			WHERE
				c_1.ParentID <= 3
		)
			THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM table(set{1})

