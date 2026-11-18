-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @take Integer(4) -- Int32
SET     @take = 4

SELECT
	t3.F2
FROM
	(
		SELECT DISTINCT
			t2.F1,
			t2.F2
		FROM
			(
				SELECT SKIP @skip FIRST @take
					t1.F1,
					t1.F2
				FROM
					DistinctOrderByTable t1
				ORDER BY
					t1.F3 DESC
			) t2
	) t3

