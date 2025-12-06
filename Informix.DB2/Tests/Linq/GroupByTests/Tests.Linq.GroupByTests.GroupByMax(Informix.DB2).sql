-- Informix.DB2 Informix

SELECT
	MAX(g_1.ParentID)
FROM
	Child g_1
GROUP BY
	g_1.ChildID

