-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t4."ParentID",
	t4."Value1"
FROM
	(
		SELECT DISTINCT ON (t3.c1)
			t3."ParentID",
			t3."Value1"
		FROM
			(
				SELECT DISTINCT ON (Floor(t2."ParentID"::decimal % 3)::Int)
					Floor(t2."ParentID"::decimal % 2)::Int as c1,
					t2."ParentID",
					t2."Value1"
				FROM
					(
						SELECT
							t1."ParentID",
							t1."Value1"
						FROM
							"Parent" t1
					) t2
				ORDER BY
					Floor(t2."ParentID"::decimal % 3)::Int,
					t2."ParentID" DESC
			) t3
		ORDER BY
			t3.c1,
			Floor(t3."ParentID"::decimal % 3)::Int,
			t3."ParentID" DESC
	) t4
ORDER BY
	Floor(t4."ParentID"::decimal % 3)::Int,
	t4."ParentID" DESC

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

