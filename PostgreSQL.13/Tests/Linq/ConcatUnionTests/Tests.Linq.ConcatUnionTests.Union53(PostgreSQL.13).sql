-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p1."ParentID",
	NULL::Int
FROM
	"Parent" p1
UNION
SELECT
	NULL::Int,
	p2."Value1"
FROM
	"Parent" p2

