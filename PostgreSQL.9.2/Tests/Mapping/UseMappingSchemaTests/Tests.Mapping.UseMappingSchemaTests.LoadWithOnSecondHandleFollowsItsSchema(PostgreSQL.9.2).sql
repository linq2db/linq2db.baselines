-- PostgreSQL.9.2 PostgreSQL
SELECT
	p."ParentID",
	p."Value1",
	c_1."ParentID",
	c_1."ChildID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"
		LEFT JOIN "Parent" "a_Parent" ON c_1."ParentID" = "a_Parent"."ParentID"

