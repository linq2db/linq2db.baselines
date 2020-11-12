BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 5

SELECT
	Count(*)
FROM
	(
		SELECT
			t1.ChildID
		FROM
			Child t1
		WHERE
			ROWNUM <= :take
	) t2

