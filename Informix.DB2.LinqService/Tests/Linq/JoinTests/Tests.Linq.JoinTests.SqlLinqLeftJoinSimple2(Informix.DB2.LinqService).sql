BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	p.ParentID,
	c_1.ChildID
FROM
	Parent p
		LEFT JOIN Child c_1 ON p.ParentID = c_1.ParentID

