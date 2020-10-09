BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			Child id
		WHERE
			t1.ParentID = id.ParentID AND id.ChildID < 30 AND id.ChildID >= 20
	)
FROM
	Child t1
GROUP BY
	t1.ParentID

