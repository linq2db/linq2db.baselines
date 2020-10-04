BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Max(t1.ParentID)
FROM
	Parent t1
WHERE
	t1.ParentID < 0

