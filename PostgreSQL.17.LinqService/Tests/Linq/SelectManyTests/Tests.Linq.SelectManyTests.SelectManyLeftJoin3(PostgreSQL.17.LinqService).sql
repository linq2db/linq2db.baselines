BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Parent" p
		CROSS JOIN "Child" ch
WHERE
	p."ParentID" = ch."ParentID"

