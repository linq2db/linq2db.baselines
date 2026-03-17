-- PostgreSQL.13 PostgreSQL

SELECT
	Coalesce(p."Value1", 100) + 50
FROM
	"Parent" p

