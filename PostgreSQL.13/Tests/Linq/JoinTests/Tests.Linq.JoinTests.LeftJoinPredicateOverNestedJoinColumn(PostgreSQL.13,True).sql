-- PostgreSQL.13 PostgreSQL12
SELECT
	p."ParentID",
	x."ChildID",
	g_1."GrandChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" x
			INNER JOIN "GrandChild" g_1 ON g_1."ChildID" = x."ChildID" OR g_1."ChildID" IS NULL AND x."ChildID" IS NULL
		ON p."ParentID" = x."ParentID" AND g_1."GrandChildID" > 300

