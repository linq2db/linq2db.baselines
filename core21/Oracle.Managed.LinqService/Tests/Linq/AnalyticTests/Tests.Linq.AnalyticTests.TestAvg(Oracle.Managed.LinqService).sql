BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Round(AVG(c_1.ChildID), 27),
	AVG(c_1.ChildID),
	AVG(ALL c_1.ChildID),
	AVG(DISTINCT c_1.ChildID)
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID
GROUP BY
	p.ParentID

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Round(AVG(c_1.ParentID), 27)
FROM
	Child c_1

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	AVG(ALL t1.ParentID)
FROM
	Child t1

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	AVG(DISTINCT t1.ParentID)
FROM
	Child t1

