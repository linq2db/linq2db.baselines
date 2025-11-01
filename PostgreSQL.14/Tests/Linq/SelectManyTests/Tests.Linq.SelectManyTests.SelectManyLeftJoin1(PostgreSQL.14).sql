-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."Value1",
	c_1."ChildID",
	p."ParentID"
FROM
	"Parent" p
		LEFT JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

