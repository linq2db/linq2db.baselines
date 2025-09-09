BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT DISTINCT
	Coalesce(p."Value1", (p."ParentID"::decimal % 2)::decimal)
FROM
	"Parent" p

