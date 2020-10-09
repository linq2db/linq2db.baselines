BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	CUME_DIST() OVER(PARTITION BY p.Value1, c_1.ChildID ORDER BY p.Value1), 
	CUME_DIST() OVER(ORDER BY c_1.ChildID DESC, p.Value1)
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	CUME_DIST(1, 2) WITHIN GROUP (ORDER BY c_1.ChildID DESC, p.Value1), 
	CUME_DIST(2, 3) WITHIN GROUP (ORDER BY c_1.ChildID, p.Value1 DESC)
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID

