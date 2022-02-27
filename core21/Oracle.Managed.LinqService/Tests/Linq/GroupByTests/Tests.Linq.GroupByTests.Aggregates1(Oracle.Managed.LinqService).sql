BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Count(*),
	Sum(t1.ChildID),
	Min(t1.ChildID),
	Max(t1.ChildID),
	Round(AVG(t1.ChildID), 27)
FROM
	Child t1
GROUP BY
	t1.ParentID

