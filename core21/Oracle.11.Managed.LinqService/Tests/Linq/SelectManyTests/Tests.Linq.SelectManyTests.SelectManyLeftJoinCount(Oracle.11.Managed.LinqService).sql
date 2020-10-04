BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	Parent p
		LEFT JOIN Child o ON p.ParentID = o.ParentID

