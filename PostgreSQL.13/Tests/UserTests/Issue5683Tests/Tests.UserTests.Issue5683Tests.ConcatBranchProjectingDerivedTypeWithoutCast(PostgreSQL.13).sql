-- PostgreSQL.13 PostgreSQL12
SELECT
	0::Int,
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" > 3
UNION ALL
SELECT
	1::Int,
	p_1."ParentID",
	p_1."Value1"
FROM
	"Parent" p_1
WHERE
	p_1."ParentID" <= 3

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

