BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				Child c_1
			WHERE
				11 = c_1.ParentID
		)
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM table(set{1})

