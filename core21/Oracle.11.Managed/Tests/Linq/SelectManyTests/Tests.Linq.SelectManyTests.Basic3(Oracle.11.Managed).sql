BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1.ParentID + 1
FROM
	Parent cp,
	Child t1
WHERE
	t1.ParentID > 0

