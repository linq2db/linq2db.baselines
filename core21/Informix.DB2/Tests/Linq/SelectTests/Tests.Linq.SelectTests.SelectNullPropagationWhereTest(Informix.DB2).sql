BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.ParentID,
	p.Value1,
	a_Parent.Value1
FROM
	Parent p
		INNER JOIN Child c_1 ON c_1.ParentID = p.ParentID
		LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
WHERE
	((CASE
		WHEN (p.ParentID IS NOT NULL OR p.Value1 IS NOT NULL)
			THEN p.ParentID
		ELSE NULL
	END > 0 OR p.Value1 > 0) OR a_Parent.Value1 > 0)

