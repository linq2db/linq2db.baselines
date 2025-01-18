BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 5

SELECT
	t4.F2
FROM
	(
		SELECT DISTINCT
			t3.F1,
			t3.F2
		FROM
			(
				SELECT
					t2.F1,
					t2.F2
				FROM
					(
						SELECT
							t1.F1,
							t1.F2
						FROM
							"DistinctOrderByTable" t1
						ORDER BY
							t1.F3 DESC
					) t2
				WHERE
					ROWNUM <= :take
			) t3
	) t4

