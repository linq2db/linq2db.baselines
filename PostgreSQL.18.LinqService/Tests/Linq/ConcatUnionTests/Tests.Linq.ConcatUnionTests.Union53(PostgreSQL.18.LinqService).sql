BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	p1."ParentID",
	NULL::Int
FROM
	"Parent" p1
UNION
SELECT
	NULL::Int,
	p2."Value1"
FROM
	"Parent" p2

