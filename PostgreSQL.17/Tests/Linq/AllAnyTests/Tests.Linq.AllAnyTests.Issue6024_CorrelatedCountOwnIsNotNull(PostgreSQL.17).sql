-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	p."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"GrandChild" g_1
		WHERE
			g_1."ParentID" = p."ParentID" AND g_1."ChildID" IS NOT NULL
	)
FROM
	"Parent" p
ORDER BY
	p."ParentID"

