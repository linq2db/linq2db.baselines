BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	Sum(t1.ChildID)
FROM
	Child t1
GROUP BY
	t1.ParentID

