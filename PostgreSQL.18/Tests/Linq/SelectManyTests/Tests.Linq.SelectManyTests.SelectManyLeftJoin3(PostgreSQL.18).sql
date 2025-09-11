BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Parent" p
		CROSS JOIN "Child" ch
WHERE
	p."ParentID" = ch."ParentID"

