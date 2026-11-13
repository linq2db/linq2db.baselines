-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	Coalesce((
		SELECT
			SUM(t1."Key_1")
		FROM
			(
				SELECT DISTINCT ON (Floor(g_2."Key_1"::decimal % 2)::Int)
					g_2."Key_1"
				FROM
					(
						SELECT DISTINCT
							g_1."ChildID" as "Key_1"
						FROM
							"Child" g_1
						WHERE
							g_1."ParentID" = p."ParentID"
					) g_2
				ORDER BY
					Floor(g_2."Key_1"::decimal % 2)::Int,
					g_2."Key_1"
			) t1
	), 0)
FROM
	"Parent" p

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

