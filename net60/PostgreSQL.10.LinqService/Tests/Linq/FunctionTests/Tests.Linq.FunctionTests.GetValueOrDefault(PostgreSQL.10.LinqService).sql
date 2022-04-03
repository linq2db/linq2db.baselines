BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	p."Value1"
FROM
	"Parent" p
WHERE
	Coalesce(p."Value1", 0) > 0

