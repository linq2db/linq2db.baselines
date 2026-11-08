-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @id Integer -- Int32
SET     @id = 11

SELECT
	p."ParentID",
	g_1."GrandChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" x
			RIGHT JOIN "GrandChild" g_1 ON g_1."ChildID" = x."ChildID" OR g_1."ChildID" IS NULL AND x."ChildID" IS NULL
		ON p."ParentID" = g_1."ParentID" AND x."ChildID" > :id

