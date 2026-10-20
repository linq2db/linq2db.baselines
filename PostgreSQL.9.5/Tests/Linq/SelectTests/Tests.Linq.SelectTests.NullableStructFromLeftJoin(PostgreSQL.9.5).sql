-- PostgreSQL.9.5 PostgreSQL
SELECT
	p."ParentID",
	c_1."ChildID",
	c_1."ParentID"
FROM
	"Parent" p
		LEFT JOIN "Child" c_1 ON c_1."ParentID" = p."ParentID"

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

