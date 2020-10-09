BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	COUNT(*) * 100E0 / SUM(COUNT(*)) OVER(), 
	Sum(t1.ParentID)
FROM
	Child t1
GROUP BY
	t1.ParentID
HAVING
	(Sum(t1.ParentID) IS NULL OR Sum(t1.ParentID) <> 36)

