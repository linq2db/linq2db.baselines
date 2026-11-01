-- Informix.DB2 Informix
DECLARE @date Timestamp(16) -- DateTime
SET     @date = TO_DATE('2000-01-01', '%Y-%m-%d')

SELECT
	p.ParentID,
	g_1.GrandChildID
FROM
	Parent p
		LEFT JOIN Child x
			RIGHT JOIN GrandChild g_1 ON g_1.ChildID = x.ChildID OR g_1.ChildID IS NULL AND x.ChildID IS NULL
		ON p.ParentID = g_1.ParentID AND CURRENT > @date

