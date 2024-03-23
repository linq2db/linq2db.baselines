BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ChildID",
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		LEFT JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"
WHERE
	p."ParentID" >= 4

