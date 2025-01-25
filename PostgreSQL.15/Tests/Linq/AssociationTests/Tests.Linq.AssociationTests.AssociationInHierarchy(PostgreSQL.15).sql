BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Child" ch
		LEFT JOIN "Parent" "a_Parent" ON ch."ParentID" = "a_Parent"."ParentID"

