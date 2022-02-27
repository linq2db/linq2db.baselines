BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	p.ParentID,
	(
		SELECT
			c_1.ParentID + 1
		FROM
			Child c_1
		WHERE
			ROWNUM <= :take
	)
FROM
	Parent p

