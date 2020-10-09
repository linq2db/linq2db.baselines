BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	t.ParentID, 
	(
		SELECT 
			Count(*)
		FROM
			Child t1
		WHERE
			t.ParentID = t1.ParentID
	)
FROM
	Parent t

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	t.ParentID, 
	(
		SELECT 
			Count(*)
		FROM
			Child t1
		WHERE
			t.ParentID = t1.ParentID
	)
FROM
	Parent t

