BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	p1."ParentID",
	NULL::Int
FROM
	"Parent" p1
UNION
SELECT
	p2."ParentID",
	p2."Value1"
FROM
	"Parent" p2

