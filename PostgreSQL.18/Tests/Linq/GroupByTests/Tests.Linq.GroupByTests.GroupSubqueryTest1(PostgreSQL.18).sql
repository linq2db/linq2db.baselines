-- PostgreSQL.18 PostgreSQL

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

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

