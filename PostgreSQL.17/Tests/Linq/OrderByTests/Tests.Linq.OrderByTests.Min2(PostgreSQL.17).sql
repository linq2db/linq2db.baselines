-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	MIN(t2."ParentID")
FROM
	(
		SELECT
			t1."ParentID"
		FROM
			"Parent" t1
		ORDER BY
			t1."ParentID"
		LIMIT :take
	) t2

