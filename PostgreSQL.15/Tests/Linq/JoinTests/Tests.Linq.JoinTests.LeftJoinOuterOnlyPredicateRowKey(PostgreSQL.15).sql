-- PostgreSQL.15 PostgreSQL12
SELECT
	p."ParentID",
	c_1."ChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" c_1 ON (c_1."ParentID", c_1."ChildID") = (p."ParentID", p."ParentID" * 10 + 1) AND p."ParentID" <> 2

