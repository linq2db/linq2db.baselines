BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."ParentID",
	NULL::Int
FROM
	"Child" c_1
UNION ALL
SELECT
	NULL::Int,
	c_2."Value1"
FROM
	"Parent" c_2

