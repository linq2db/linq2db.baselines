BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	t2.c1
FROM
	Parent cp,
	( 
		SELECT 
			t1.ParentID + 1 as c1
		FROM
			Child t1
	) t2
WHERE
	t2.c1 > 1

