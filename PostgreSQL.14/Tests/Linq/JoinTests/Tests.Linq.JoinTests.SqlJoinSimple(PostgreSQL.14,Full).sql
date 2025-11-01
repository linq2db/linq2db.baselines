-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	c_1."ChildID"
FROM
	"Parent" p
		FULL JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

