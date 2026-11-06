-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	Coalesce((
		SELECT
			SUM(t1."ChildID")
		FROM
			(
				SELECT DISTINCT ON (Floor(g_2."ChildID"::decimal % 2)::Int)
					g_2."ChildID"
				FROM
					(
						SELECT
							g_1."ChildID"
						FROM
							"Child" g_1
						WHERE
							g_1."ParentID" = p."ParentID"
					) g_2
				GROUP BY
					p."ParentID",
					g_2."ChildID"
				ORDER BY
					Floor(g_2."ChildID"::decimal % 2)::Int,
					-g_2."ChildID"
			) t1
	), 0)
FROM
	"Parent" p

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

