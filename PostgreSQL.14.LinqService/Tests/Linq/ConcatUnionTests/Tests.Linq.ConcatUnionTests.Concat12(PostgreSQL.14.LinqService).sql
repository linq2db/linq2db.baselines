BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	p."ParentID",
	p."Value1",
	NULL::Int,
	NULL::Int,
	NULL::Int
FROM
	"Parent" p
WHERE
	p."ParentID" = 1
UNION ALL
SELECT
	NULL::Int,
	NULL::Int,
	"a_Parent"."ParentID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Child" ch
		LEFT JOIN "Parent" "a_Parent" ON ch."ParentID" = "a_Parent"."ParentID"
WHERE
	ch."ParentID" = 2

