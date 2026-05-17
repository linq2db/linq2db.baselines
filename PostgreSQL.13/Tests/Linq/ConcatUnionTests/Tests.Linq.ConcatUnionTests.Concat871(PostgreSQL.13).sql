-- PostgreSQL.13 PostgreSQL

SELECT
	c_1."Value1",
	NULL::Int
FROM
	"Parent" c_1
UNION ALL
SELECT
	NULL::Int,
	c_2."ParentID"
FROM
	"Child" c_2

