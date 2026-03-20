-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Parent" p,
	"Child" ch
WHERE
	p."ParentID" = ch."ParentID"

