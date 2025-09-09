BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Parent" p,
	"Child" ch
WHERE
	p."ParentID" = ch."ParentID"

