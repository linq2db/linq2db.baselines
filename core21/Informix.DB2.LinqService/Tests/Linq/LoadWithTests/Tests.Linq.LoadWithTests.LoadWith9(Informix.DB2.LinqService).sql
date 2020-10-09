BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1 
	c_1.ParentID, 
	c_1.ChildID, 
	c_1.GrandChildID
FROM
	GrandChild p
		INNER JOIN Child a_Child ON p.ParentID = a_Child.ParentID AND p.ChildID = a_Child.ChildID
		INNER JOIN GrandChild c_1 ON a_Child.ParentID = c_1.ParentID AND a_Child.ChildID = c_1.ChildID

