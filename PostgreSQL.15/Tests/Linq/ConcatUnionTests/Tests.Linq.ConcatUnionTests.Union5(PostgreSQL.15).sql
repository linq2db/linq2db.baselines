BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p1."ParentID",
	p1."Value1"
FROM
	"Parent" p1
UNION
SELECT
	p2."ParentID",
	Cast(NULL as Int)
FROM
	"Parent" p2

