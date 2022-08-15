BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p."Value1"
FROM
	"Parent" p
WHERE
	Coalesce(p."Value1", 0) > 0

