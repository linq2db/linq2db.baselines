BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	Parent p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Child t1
		WHERE
			p.ParentID = t1.ParentID
	)

