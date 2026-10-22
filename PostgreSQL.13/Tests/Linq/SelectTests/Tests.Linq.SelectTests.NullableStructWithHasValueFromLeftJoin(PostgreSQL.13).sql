-- PostgreSQL.13 PostgreSQL12
SELECT
	p."ParentID",
	c_1."ChildID",
	c_1."ParentID"
FROM
	"Parent" p
		LEFT JOIN "Child" c_1 ON c_1."ParentID" = p."ParentID"

