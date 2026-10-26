-- PostgreSQL.15 PostgreSQL12
SELECT
	p."ParentID",
	ch."ChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" ch ON p."ParentID" = ch."ParentID" AND p."ParentID" <> 2

-- PostgreSQL.15 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.15 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

