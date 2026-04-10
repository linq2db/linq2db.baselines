-- PostgreSQL.15 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ParentID"
FROM
	"Child" c_1
UNION
SELECT
	NULL::Int,
	c_2."ParentID"
FROM
	"Parent" c_2
UNION ALL
SELECT
	c_3."ParentID",
	c_3."ParentID"
FROM
	"Child" c_3

