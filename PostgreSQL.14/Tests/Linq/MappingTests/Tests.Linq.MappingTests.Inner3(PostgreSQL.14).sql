BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
		INNER JOIN "Parent" "a_Parent" ON c_1."ParentID" = "a_Parent"."ParentID"
WHERE
	"a_Parent"."Value1" = 1
LIMIT 1

