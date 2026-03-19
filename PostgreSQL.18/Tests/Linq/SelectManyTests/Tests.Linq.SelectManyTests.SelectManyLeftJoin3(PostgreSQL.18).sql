-- PostgreSQL.18 PostgreSQL

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Parent" t1,
	"Child" ch
WHERE
	t1."ParentID" = ch."ParentID"

