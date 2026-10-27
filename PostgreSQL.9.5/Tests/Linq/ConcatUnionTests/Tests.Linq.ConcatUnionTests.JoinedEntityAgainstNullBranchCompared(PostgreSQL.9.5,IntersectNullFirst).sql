-- PostgreSQL.9.5 PostgreSQL
SELECT
	p."ParentID",
	NULL::Int,
	NULL::Int,
	NULL::Int
FROM
	"Parent" p
INTERSECT
SELECT
	t1."ParentID",
	c_1."ParentID",
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Parent" t1
		LEFT JOIN "Child" c_1 ON c_1."ParentID" = t1."ParentID"

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

