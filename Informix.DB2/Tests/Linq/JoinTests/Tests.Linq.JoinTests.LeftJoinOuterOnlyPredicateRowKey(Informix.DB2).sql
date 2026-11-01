-- Informix.DB2 Informix
SELECT
	p.ParentID,
	c_1.ChildID
FROM
	Parent p
		LEFT JOIN Child c_1 ON ROW (c_1.ParentID, c_1.ChildID) = ROW (p.ParentID, p.ParentID * 10 + 1) AND p.ParentID <> 2

