BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	c_3.ParentID, 
	c_3.c1
FROM
	( 
		SELECT 
			c_1.ParentID, 
			NULL as c1
		FROM
			Child c_1
		WHERE
			c_1.ParentID = 1
		UNION ALL
		SELECT 
			NULL as ParentID, 
			c_2.ChildID + 1000 as c1
		FROM
			Child c_2
		WHERE
			c_2.ParentID = 3
	) c_3
WHERE
	c_3.ParentID = 1

