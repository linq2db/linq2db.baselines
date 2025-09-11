BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	p1."ParentID",
	p1."Value1"
FROM
	"Parent" p1
		CROSS JOIN "Parent" p2
WHERE
	p1."Value1" = p2."Value1"

