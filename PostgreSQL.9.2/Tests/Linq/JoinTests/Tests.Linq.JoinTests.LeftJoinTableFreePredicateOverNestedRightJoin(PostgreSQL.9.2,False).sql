-- PostgreSQL.9.2 PostgreSQL
DECLARE @date Timestamp -- DateTime2
SET     @date = '2000-01-01'::date

SELECT
	p."ParentID",
	g_1."GrandChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" x
			RIGHT JOIN "GrandChild" g_1 ON g_1."ChildID" = x."ChildID" OR g_1."ChildID" IS NULL AND x."ChildID" IS NULL
		ON p."ParentID" = g_1."ParentID" AND CURRENT_TIMESTAMP < :date

