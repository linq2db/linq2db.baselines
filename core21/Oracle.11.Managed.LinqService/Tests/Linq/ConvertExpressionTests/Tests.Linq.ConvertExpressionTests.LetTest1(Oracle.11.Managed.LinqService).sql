BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1
DECLARE @take_1 Int32
SET     @take_1 = 1

SELECT
	(
		SELECT
			p.ParentID
		FROM
			Child p
		WHERE
			p_1.ParentID = p.ParentID AND ROWNUM <= :take
	)
FROM
	Parent p_1
WHERE
	(
		SELECT
			1
		FROM
			Child t1
		WHERE
			p_1.ParentID = t1.ParentID AND ROWNUM <= :take_1
	) IS NOT NULL

