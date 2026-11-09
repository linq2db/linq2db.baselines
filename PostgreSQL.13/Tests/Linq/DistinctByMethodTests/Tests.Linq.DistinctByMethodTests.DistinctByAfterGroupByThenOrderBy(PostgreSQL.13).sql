-- PostgreSQL.13 PostgreSQL12
SELECT
	t2."Key_1"
FROM
	(
		SELECT DISTINCT ON (Floor(t1."Key_1"::decimal % 2)::Int)
			t1."Key_1"
		FROM
			(
				SELECT DISTINCT
					Floor(g_1."ParentID"::decimal % 3)::Int as "Key_1"
				FROM
					"Parent" g_1
			) t1
		ORDER BY
			Floor(t1."Key_1"::decimal % 2)::Int,
			t1."Key_1" DESC
	) t2
ORDER BY
	t2."Key_1" DESC

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

