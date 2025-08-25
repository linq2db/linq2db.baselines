BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @skip Integer(4) -- Int32
SET     @skip = 2

SELECT
	t3.F2
FROM
	(
		SELECT DISTINCT
			t2.F1,
			t2.F2
		FROM
			(
				SELECT SKIP @skip
					t1.F1,
					t1.F2
				FROM
					DistinctOrderByTable t1
				ORDER BY
					t1.F3 DESC
			) t2
	) t3

