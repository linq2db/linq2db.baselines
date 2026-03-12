-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT DISTINCT
	g_1."ParentID"
FROM
	"Child" gc
		INNER JOIN "GrandChild" g_1 ON gc."ParentID" = g_1."ParentID" AND gc."ChildID" = g_1."ChildID"

