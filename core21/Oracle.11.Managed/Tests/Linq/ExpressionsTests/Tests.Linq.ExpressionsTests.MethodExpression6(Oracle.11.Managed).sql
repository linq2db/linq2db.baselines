BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			Child c_1
		WHERE
			c_1.ParentID = p.ParentID
	)
FROM
	Parent p

