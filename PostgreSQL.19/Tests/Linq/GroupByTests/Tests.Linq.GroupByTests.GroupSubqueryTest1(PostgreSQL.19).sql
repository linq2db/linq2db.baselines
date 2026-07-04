-- PostgreSQL.19 PostgreSQL13

SELECT
	pmp1."ChildID"
FROM
	(
		SELECT DISTINCT
			g_1."ParentID"
		FROM
			"Child" g_1
	) pmp
		CROSS JOIN "Child" pmp1

-- PostgreSQL.19 PostgreSQL13

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

