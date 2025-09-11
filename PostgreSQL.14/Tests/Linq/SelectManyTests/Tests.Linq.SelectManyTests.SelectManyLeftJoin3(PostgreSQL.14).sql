BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Parent" p
		CROSS JOIN "Child" ch
WHERE
	p."ParentID" = ch."ParentID"

