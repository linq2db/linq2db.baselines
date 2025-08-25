BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	p1."ParentID",
	p1."Value1"
FROM
	"Parent" p1
UNION
SELECT
	p2."ParentID",
	NULL::Int
FROM
	"Parent" p2

