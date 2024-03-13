BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Coalesce(p."Value1", 100) + 50
FROM
	"Parent" p

