BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Round(AVG(t1.ParentID), 27)
FROM
	Parent t1
WHERE
	t1.ParentID < 0

