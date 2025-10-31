-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p1."ParentID",
	p1."Value1"
FROM
	"Parent" p1
UNION
SELECT
	p2."ParentID",
	NULL::Int
FROM
	"Parent" p2

