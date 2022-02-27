BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."Value1",
	NULL
FROM
	"Parent" c_1
UNION ALL
SELECT
	NULL,
	c_2."ParentID"
FROM
	"Child" c_2

