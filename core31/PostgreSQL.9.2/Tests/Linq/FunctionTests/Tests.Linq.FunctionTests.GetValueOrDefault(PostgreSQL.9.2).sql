BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	p."Value1"
FROM
	"Parent" p
WHERE
	Coalesce(p."Value1", 0) > 0

