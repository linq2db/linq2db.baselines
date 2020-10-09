BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	(
		SELECT 
			Max(t1.ParentID)
		FROM
			Child t1
		WHERE
			p.ParentID = t1.ParentID AND t1.ParentID < 0
	)
FROM
	Parent p

