BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	Coalesce(p."Value1", 100) + 50
FROM
	"Parent" p

