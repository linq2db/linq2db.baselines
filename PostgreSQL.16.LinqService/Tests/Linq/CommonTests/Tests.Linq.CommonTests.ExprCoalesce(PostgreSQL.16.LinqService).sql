BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Coalesce(p."Value1", 100) + 50
FROM
	"Parent" p

