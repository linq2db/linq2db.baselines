-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @date_1 TimeStamp -- DateTime
SET     @date_1 = TIMESTAMP '2000-01-01 00:00:00.000000'

SELECT
	p."ParentID",
	g_1."GrandChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" x
			RIGHT JOIN "GrandChild" g_1 ON g_1."ChildID" = x."ChildID" OR g_1."ChildID" IS NULL AND x."ChildID" IS NULL
		ON p."ParentID" = g_1."ParentID" AND CURRENT_TIMESTAMP > :date_1

