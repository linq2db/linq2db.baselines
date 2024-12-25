BeforeExecute
-- Informix.DB2 Informix

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child param
				LEFT JOIN Parent a_Parent ON param.ParentID = a_Parent.ParentID
		WHERE
			a_Parent.ParentID = 11 AND a_Parent.Value1 = 11
	)
FROM table(set{1})

