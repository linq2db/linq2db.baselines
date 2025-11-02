-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	pmp1."ChildID"
FROM
	(
		SELECT
			g_1."ParentID"
		FROM
			"Child" g_1
		GROUP BY
			g_1."ParentID"
	) pmp
		CROSS JOIN "Child" pmp1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

