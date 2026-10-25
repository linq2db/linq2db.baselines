-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	c_1."ChildID",
	"a_Parent"."Value1"
FROM
	"Child" c_1
		LEFT JOIN "Parent" "a_Parent" ON c_1."ParentID" = "a_Parent"."ParentID"
ORDER BY
	c_1."ChildID"

