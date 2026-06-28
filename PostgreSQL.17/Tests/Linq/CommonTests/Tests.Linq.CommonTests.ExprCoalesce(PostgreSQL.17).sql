-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	Coalesce(p."Value1", 100) + 50
FROM
	"Parent" p

