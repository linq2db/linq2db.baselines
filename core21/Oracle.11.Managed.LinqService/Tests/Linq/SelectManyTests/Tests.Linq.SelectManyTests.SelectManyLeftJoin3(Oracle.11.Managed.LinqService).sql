BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Parent p
		LEFT JOIN Child t1 ON 1=1
WHERE
	p.ParentID = t1.ParentID

