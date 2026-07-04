-- PostgreSQL.19 PostgreSQL13

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" ch ON p."ParentID" = ch."ParentID"

