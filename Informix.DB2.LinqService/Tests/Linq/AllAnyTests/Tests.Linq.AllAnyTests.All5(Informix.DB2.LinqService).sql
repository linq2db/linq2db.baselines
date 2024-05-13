BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				c_1.ParentID <= 3
		)
			THEN 't'
		ELSE 'f'
	END
FROM table(set{1})

