-- PostgreSQL.13 PostgreSQL

SELECT
	t."ParentID",
	t."ChildID"
FROM
	"Child" t
WHERE
	t."ParentID" IN (
		SELECT
			g_1."ParentID"
		FROM
			"Child" g_1
		GROUP BY
			g_1."ParentID"
		ORDER BY
			MAX(g_1."ChildID") DESC
		LIMIT 2
	)

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

