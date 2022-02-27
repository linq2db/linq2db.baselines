BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @n Int32
SET     @n = 3

SELECT
	(
		SELECT
			Count(*)
		FROM
			Child c_1
		WHERE
			p.ParentID = c_1.ParentID AND c_1.ChildID > :n
	)
FROM
	Parent p

