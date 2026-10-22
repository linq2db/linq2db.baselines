-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	g_1."ParentID",
	SUM(c_1."ChildID") FILTER (WHERE c_1."ChildID" = 21),
	SUM(c_1."ChildID") FILTER (WHERE c_1."ChildID" = 22),
	SUM(c_1."ChildID") FILTER (WHERE c_1."ChildID" = 31),
	SUM(c_1."ChildID") FILTER (WHERE c_1."ChildID" = 32),
	SUM(c_1."ChildID") FILTER (WHERE c_1."ChildID" = 33)
FROM
	"Parent" g_1
		INNER JOIN "Child" c_1 ON g_1."ParentID" = c_1."ParentID"
WHERE
	g_1."ParentID" = 2 OR g_1."ParentID" = 3
GROUP BY
	g_1."ParentID"

