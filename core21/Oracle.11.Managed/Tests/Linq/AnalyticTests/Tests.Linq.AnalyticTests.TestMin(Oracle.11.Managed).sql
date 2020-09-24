BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Min(c_1.ChildID),
	MIN(c_1.ChildID),
	MIN(ALL c_1.ChildID),
	MIN(DISTINCT c_1.ChildID)
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID
GROUP BY
	p.ParentID

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Min(c_1.ParentID)
FROM
	Child c_1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	MIN(ALL t1.ParentID)
FROM
	Child t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	MIN(DISTINCT t1.ParentID)
FROM
	Child t1

