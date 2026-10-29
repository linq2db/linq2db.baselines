-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	t3."ParentID",
	t3."Value1"
FROM
	(
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
				OFFSET :skip 
			) t2
		ORDER BY
			t2."Value1",
			t2."ParentID" DESC
	) t3
ORDER BY
	t3."ParentID" DESC

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

