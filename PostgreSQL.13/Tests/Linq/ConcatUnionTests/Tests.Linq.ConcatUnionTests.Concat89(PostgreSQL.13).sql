-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ParentID"
FROM
	"Child" c_1
UNION ALL
SELECT
	NULL::Int,
	c_2."ParentID"
FROM
	"Parent" c_2

