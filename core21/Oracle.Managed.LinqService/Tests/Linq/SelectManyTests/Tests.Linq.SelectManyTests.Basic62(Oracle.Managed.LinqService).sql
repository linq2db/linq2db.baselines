BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	t2.c1
FROM
	Parent cp
		CROSS APPLY ( 
			SELECT 
				t1.ParentID + cp.ParentID as c1
			FROM
				Child t1
			WHERE
				cp.ParentID = t1.ParentID
		) t2
WHERE
	t2.c1 > 1

