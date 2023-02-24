BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	c_1."ParentID",
	Cast(NULL as Int)
FROM
	"Child" c_1
UNION ALL
SELECT
	Cast(NULL as Int),
	c_2."Value1"
FROM
	"Parent" c_2

