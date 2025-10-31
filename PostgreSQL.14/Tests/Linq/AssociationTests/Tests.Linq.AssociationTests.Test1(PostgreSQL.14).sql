-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	ch."ParentID",
	ch."ChildID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Child" ch
		LEFT JOIN "Parent" "a_Parent" ON ch."ParentID" = "a_Parent"."ParentID"
WHERE
	ch."ParentID" = 1

