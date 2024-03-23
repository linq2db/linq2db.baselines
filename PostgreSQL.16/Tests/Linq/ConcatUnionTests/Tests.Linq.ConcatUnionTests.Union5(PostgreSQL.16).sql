BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
UNION
SELECT
	p2."ParentID",
	Cast(NULL as Int)
FROM
	"Parent" p2

