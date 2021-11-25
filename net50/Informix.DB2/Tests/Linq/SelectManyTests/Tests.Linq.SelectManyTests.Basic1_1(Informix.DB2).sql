BeforeExecute
-- Informix.DB2 Informix

SELECT
	c_1.ParentID,
	c_1.ChildID,
	c_1.GrandChildID
FROM
	Parent cp_1
		INNER JOIN Child cp ON 1=1
		INNER JOIN GrandChild c_1 ON 1=1

