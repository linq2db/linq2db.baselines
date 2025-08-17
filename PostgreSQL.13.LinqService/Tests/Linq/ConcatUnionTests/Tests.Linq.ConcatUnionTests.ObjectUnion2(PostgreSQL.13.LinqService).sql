BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	p1."ParentID",
	p1."Value1"
FROM
	"Parent" p1
WHERE
	p1."ParentID" > 3
UNION
SELECT
	NULL::Int,
	NULL::Int
FROM
	"Parent" p2
WHERE
	p2."ParentID" <= 3

