BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	g_1."ParentID"
FROM
	"Child" gc
		INNER JOIN "GrandChild" g_1 ON gc."ParentID" = g_1."ParentID" AND g_1."ParentID" IS NOT NULL AND gc."ChildID" = g_1."ChildID" AND g_1."ChildID" IS NOT NULL
GROUP BY
	g_1."ParentID"

