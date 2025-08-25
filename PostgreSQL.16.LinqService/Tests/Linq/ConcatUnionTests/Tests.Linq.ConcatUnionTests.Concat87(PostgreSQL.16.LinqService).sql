BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

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

