BeforeExecute
-- Informix.DB2 Informix

SELECT
	o.ParentID,
	o.Value1,
	c_2.ParentID,
	c_2.ChildID
FROM
	Parent o
		INNER JOIN (
			SELECT FIRST 1
				c_1.ParentID,
				c_1.ChildID
			FROM
				Child c_1
		) c_2 ON o.ParentID = c_2.ParentID

