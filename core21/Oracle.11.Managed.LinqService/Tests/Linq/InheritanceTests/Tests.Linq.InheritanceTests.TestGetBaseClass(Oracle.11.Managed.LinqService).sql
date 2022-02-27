BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	(x.Value1 = 1 OR x.Value1 = 2)

