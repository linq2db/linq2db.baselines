BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	gc."ParentID",
	gc."ChildID",
	gc."GrandChildID"
FROM
	"Parent" cp
		INNER JOIN "GrandChild" gc ON cp."ParentID" = gc."ParentID" AND gc."ChildID" = 22

