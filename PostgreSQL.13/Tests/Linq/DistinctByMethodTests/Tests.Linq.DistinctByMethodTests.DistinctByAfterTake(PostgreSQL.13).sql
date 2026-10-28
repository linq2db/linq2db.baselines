-- PostgreSQL.13 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT DISTINCT ON (t2."Value1")
	t2."ParentID",
	t2."Value1"
FROM
	(
		SELECT
			t1."Value1",
			t1."ParentID"
		FROM
			"Parent" t1
		ORDER BY
			t1."ParentID" DESC
		LIMIT :take
	) t2
ORDER BY
	t2."Value1",
	t2."ParentID" DESC

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

