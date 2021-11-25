BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.ParentID,
	c_1.ChildID
FROM
	Parent p
		INNER JOIN Child c_1 ON 1=1
		INNER JOIN Parent a_Parent1 ON c_1.ParentID = a_Parent1.ParentID
WHERE
	p.ParentID = a_Parent1.ParentID
ORDER BY
	c_1.ChildID,
	p.ParentID

