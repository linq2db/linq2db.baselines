BeforeExecute
-- Informix.DB2 Informix

SELECT
	NULL::Int
FROM
	GrandChild t1
GROUP BY
	t1.ParentID,
	t1.ChildID

