-- PostgreSQL.13 PostgreSQL12
SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" ch ON p."ParentID" = ch."ParentID"

