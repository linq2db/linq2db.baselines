BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	p."Value1",
	c_1."ParentID",
	c_1."ChildID",
	g_1."ParentID",
	g_1."ChildID",
	g_1."GrandChildID"
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"
		INNER JOIN "GrandChild" g_1 ON p."ParentID" = g_1."ParentID"
WHERE
	(((c_1."ParentID" = 2 OR c_1."ParentID" = 3) AND (g_1."ChildID" IS NULL OR g_1."ChildID" <> 21) AND (g_1."ChildID" IS NULL OR g_1."ChildID" <> 33) OR g_1."ParentID" = 3 AND g_1."ChildID" = 32) OR g_1."ChildID" = 11)

