-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Parent" p,
	"Child" ch
WHERE
	p."ParentID" = ch."ParentID"

