-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	t3.F2
FROM
	(
		SELECT
			t2.F2
		FROM
			(
				SELECT DISTINCT
					t1.F1,
					t1.F2
				FROM
					"DistinctOrderByTable" t1
			) t2
		ORDER BY
			t2.F1
	) t3
WHERE
	ROWNUM <= :take

