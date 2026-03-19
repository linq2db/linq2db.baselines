-- PostgreSQL.13 PostgreSQL

SELECT
	t1."ParentID",
	c_1."ChildID"
FROM
	"Parent" t1
		CROSS JOIN "Child" c_1
		INNER JOIN "Parent" "a_Parent" ON c_1."ParentID" = "a_Parent"."ParentID"
WHERE
	"a_Parent"."ParentID" = t1."ParentID" AND ("a_Parent"."Value1" = t1."Value1" OR "a_Parent"."Value1" IS NULL AND t1."Value1" IS NULL)
ORDER BY
	t1."ParentID",
	c_1."ChildID"

