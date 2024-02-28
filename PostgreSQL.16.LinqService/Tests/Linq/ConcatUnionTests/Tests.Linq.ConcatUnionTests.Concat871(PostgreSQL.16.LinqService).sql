BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	c_1."Value1",
	Cast(NULL as Int)
FROM
	"Parent" c_1
UNION ALL
SELECT
	Cast(NULL as Int),
	c_2."ParentID"
FROM
	"Child" c_2

