-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" t1
		LIMIT :take
	) t2

