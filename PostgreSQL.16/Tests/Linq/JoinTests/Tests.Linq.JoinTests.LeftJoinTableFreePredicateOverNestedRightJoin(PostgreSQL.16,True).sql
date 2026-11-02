-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @year Integer -- Int32
SET     @year = 2000

SELECT
	p."ParentID",
	g_1."GrandChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" x
			RIGHT JOIN "GrandChild" g_1 ON g_1."ChildID" = x."ChildID" OR g_1."ChildID" IS NULL AND x."ChildID" IS NULL
		ON p."ParentID" = g_1."ParentID" AND Floor(Extract(year From CURRENT_TIMESTAMP))::Int > :year

