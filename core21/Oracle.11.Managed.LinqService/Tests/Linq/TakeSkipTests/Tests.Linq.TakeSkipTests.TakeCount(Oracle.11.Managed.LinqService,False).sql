BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	Count(*)
FROM
	( 
		SELECT 
			t1.ParentID, 
			t1.ChildID
		FROM
			Child t1
		WHERE
			ROWNUM <= 5
	) t2

