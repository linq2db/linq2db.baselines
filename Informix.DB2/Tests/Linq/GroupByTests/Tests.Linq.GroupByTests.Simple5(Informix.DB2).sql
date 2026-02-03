-- Informix.DB2 Informix

SELECT DISTINCT
	g_1.ParentID
FROM
	GrandChild g_1
GROUP BY
	g_1.ParentID,
	g_1.ChildID

