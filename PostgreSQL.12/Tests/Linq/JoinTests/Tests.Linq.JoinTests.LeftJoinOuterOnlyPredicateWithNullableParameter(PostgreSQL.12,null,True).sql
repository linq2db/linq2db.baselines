-- PostgreSQL.12 PostgreSQL12
SELECT
	c_1."ChildID",
	p."ParentID"
FROM
	"Child" c_1
		LEFT JOIN "Parent" p ON 1 = 0

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

