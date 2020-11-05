BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	left_3.ParentID,
	left_3.Value1,
	p.ParentID,
	p.Value1
FROM
	Parent left_3
		INNER JOIN Parent left2 ON left_3.Value1 = left2.Value1 + 2
		FULL JOIN Parent p ON p.Value1 + 2 = left_3.Value1
ORDER BY
	left_3.ParentID

