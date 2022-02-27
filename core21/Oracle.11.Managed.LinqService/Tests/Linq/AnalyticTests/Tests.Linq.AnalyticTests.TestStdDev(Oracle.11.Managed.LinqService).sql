BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	STDDEV(c_1.ChildID),
	STDDEV(ALL c_1.ChildID),
	STDDEV(DISTINCT c_1.ChildID)
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID
GROUP BY
	p.ParentID

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	STDDEV(t1.ParentID)
FROM
	Child t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	STDDEV(ALL t1.ParentID)
FROM
	Child t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	STDDEV(DISTINCT t1.ParentID)
FROM
	Child t1

