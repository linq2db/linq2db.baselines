BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				Parent p
			WHERE
				 EXISTS (
					SELECT
						*
					FROM
						Child c_1
					WHERE
						p.ParentID = c_1.ParentID AND c_1.ParentID > 1
				)
		)
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM table(set{1})

