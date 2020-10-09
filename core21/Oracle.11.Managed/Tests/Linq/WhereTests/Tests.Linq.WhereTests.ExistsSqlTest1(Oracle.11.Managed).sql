BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	Parent p
WHERE
	EXISTS(
		SELECT 
			*
		FROM
			Child c_1
		WHERE
			c_1.ParentID = p.ParentID
	)

