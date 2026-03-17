-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	p."Value1",
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Parent" p
		RIGHT JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID" AND Coalesce(p."Value1", 0) = c_1."ParentID"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

