BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 2

SELECT
	t5.F2
FROM
	(
		SELECT DISTINCT
			t4.F1,
			t4.F2
		FROM
			(
				SELECT
					t3.F1,
					t3.F2
				FROM
					(
						SELECT
							t2.F1,
							t2.F2,
							ROWNUM as RN
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
					) t3
				WHERE
					t3.RN > :skip
			) t4
	) t5

