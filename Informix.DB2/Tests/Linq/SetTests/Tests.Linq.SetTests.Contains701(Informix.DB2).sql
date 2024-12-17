BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				Child param
					LEFT JOIN Parent a_Parent ON param.ParentID = a_Parent.ParentID
			WHERE
				a_Parent.ParentID = 11 AND a_Parent.Value1 = 11
		)
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM table(set{1})

