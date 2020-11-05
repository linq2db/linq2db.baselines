BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1
DECLARE @skip_1 Int32
SET     @skip_1 = 0

SELECT
	1
FROM
	(
		SELECT
			ROWNUM as RN
		FROM
			(
				SELECT
					1 as c1
				FROM
					Person t1
			) t2
		WHERE
			ROWNUM <= :take
	) t3
WHERE
	t3.RN > :skip_1

