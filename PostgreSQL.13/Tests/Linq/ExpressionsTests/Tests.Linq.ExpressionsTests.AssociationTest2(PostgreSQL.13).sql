BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	gc."ParentID",
	gc."ChildID",
	gc."GrandChildID"
FROM
	"Parent" p
		INNER JOIN "GrandChild" gc ON p."ParentID" = gc."ParentID"
WHERE
	gc."ChildID" = 22

