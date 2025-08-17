BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	t4.F2
FROM
	(
		SELECT
			t3.F2,
			ROWNUM as RN
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
			ROWNUM <= (:skip + :take)
	) t4
WHERE
	t4.RN > :skip

