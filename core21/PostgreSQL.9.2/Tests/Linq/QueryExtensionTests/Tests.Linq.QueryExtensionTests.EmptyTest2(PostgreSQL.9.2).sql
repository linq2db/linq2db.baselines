BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	p."ParentID",
	p."Value1",
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Parent" p,
	"Child" c_1
WHERE
	p."ParentID" = c_1."ParentID"

