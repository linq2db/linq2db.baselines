BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	(
		SELECT
			1
		FROM
			Child t1
		WHERE
			p.ParentID = t1.ParentID AND ROWNUM <= :take
	) IS NOT NULL

