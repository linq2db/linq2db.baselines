BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1.ParentID
FROM
	Child t1
GROUP BY
	t1.ParentID
HAVING
	Count(*) > 2 AND t1.ParentID < 5

