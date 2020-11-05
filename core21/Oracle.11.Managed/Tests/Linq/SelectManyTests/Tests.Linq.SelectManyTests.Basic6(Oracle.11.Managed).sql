BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1.ParentID + 1
FROM
	Parent cp
		INNER JOIN Child t1 ON t1.ParentID > 0 AND cp.ParentID = t1.ParentID

