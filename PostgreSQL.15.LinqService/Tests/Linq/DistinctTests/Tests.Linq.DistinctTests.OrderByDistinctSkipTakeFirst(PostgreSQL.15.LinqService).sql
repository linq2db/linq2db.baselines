BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 4
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	t3."F2"
FROM
	(
		SELECT DISTINCT
			t2."F1",
			t2."F2"
		FROM
			(
				SELECT
					t1."F1",
					t1."F2"
				FROM
					"DistinctOrderByTable" t1
				ORDER BY
					t1."F3" DESC
				LIMIT :take OFFSET :skip 
			) t2
	) t3

