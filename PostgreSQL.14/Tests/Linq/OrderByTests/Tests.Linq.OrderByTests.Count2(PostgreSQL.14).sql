-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			"Parent" t1
		ORDER BY
			t1."ParentID"
		LIMIT :take
	) t2

