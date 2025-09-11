BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Parent" p
		CROSS JOIN "Child" ch
WHERE
	p."ParentID" = ch."ParentID"

