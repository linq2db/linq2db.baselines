-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t2."ParentID",
	t2."Value1"
FROM
	(
		SELECT DISTINCT
			t1."ParentID",
			t1."Value1"
		FROM
			"Parent" t1
	) t2
ORDER BY
	t2."ParentID"
LIMIT :take

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

