-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t3."ParentID",
	t3."Value1"
FROM
	(
		SELECT DISTINCT ON (Floor(t2."ParentID"::decimal % 2)::Int)
			t2."ParentID",
			t2."Value1"
		FROM
			(
				SELECT DISTINCT ON (t1."Value1")
					t1."ParentID",
					t1."Value1"
				FROM
					"Parent" t1
				ORDER BY
					t1."Value1",
					t1."ParentID" DESC
			) t2
		ORDER BY
			Floor(t2."ParentID"::decimal % 2)::Int,
			t2."ParentID" DESC
	) t3
ORDER BY
	t3."ParentID" DESC

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

