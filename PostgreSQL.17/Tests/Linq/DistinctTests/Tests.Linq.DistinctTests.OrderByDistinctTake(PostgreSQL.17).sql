-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t2."F2"
FROM
	(
		SELECT DISTINCT
			t1."F1",
			t1."F2"
		FROM
			"DistinctOrderByTable" t1
	) t2
ORDER BY
	t2."F1"
LIMIT :take

