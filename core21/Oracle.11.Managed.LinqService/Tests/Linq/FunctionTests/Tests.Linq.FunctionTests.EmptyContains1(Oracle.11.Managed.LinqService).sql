BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	(1 = 0 OR p.ParentID = 2)

