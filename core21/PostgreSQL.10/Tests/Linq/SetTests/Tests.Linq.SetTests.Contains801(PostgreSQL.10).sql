BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	ch."ChildID",
	gc."GrandChildID"
FROM
	"Parent" p
		INNER JOIN "Child" ch ON p."ParentID" = ch."ParentID"
		INNER JOIN "GrandChild" gc ON ch."ChildID" = gc."ChildID"
WHERE
	(2 = 1 AND ch."ChildID" = 11 AND gc."GrandChildID" = 111 OR 2 = 2 AND ch."ChildID" = 21 AND gc."GrandChildID" = 211)

