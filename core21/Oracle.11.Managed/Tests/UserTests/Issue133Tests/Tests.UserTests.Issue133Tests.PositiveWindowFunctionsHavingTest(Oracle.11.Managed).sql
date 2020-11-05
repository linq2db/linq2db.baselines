BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*),
	SUM(Count(*)) OVER(),
	Sum(t1.ParentID)
FROM
	Child t1
GROUP BY
	t1.ParentID
HAVING
	(Sum(t1.ParentID) <> 36 OR Sum(t1.ParentID) IS NULL)

