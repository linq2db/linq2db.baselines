-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		INNER JOIN "Child" ch ON p."ParentID" = ch."ParentID"
		INNER JOIN "GrandChild" gc ON ch."ChildID" = gc."ChildID"
WHERE
	ch."ChildID" = 11 AND gc."GrandChildID" = 111

