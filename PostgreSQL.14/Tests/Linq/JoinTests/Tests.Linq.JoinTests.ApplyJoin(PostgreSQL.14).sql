-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Child" ch
		LEFT JOIN "Parent" "a_Parent" ON ch."ParentID" = "a_Parent"."ParentID"
		INNER JOIN LATERAL "GetParentByID"("a_Parent"."ParentID") p ON 1=1

