-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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

