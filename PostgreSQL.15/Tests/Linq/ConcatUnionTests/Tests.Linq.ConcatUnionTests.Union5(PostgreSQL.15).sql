BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
UNION
SELECT
	p2."ParentID",
	NULL::Int
FROM
	"Parent" p2

