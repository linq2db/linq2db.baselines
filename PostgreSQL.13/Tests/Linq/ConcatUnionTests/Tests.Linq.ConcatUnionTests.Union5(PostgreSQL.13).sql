-- PostgreSQL.13 PostgreSQL13

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
UNION
SELECT
	p2."ParentID",
	NULL::Int
FROM
	"Parent" p2

