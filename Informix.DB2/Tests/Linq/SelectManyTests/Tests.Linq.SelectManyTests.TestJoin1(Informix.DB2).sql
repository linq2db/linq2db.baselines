-- Informix.DB2 Informix

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Parent p
		INNER JOIN GrandChild g_1 ON p.ParentID = g_1.ParentID
		INNER JOIN Child c_1 ON g_1.ChildID = c_1.ChildID
		INNER JOIN LinqDataTypes t ON c_1.ParentID = t.ID
		INNER JOIN Person t_1 ON c_1.ParentID = t_1.PersonID

