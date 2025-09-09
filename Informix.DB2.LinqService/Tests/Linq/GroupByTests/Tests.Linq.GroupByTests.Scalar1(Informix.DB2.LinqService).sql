BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	MAX(g_1.ChildID)
FROM
	Child g_1
GROUP BY
	g_1.ParentID

