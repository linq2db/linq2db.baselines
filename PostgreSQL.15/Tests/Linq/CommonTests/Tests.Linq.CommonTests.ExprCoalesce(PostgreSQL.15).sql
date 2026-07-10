-- PostgreSQL.15 PostgreSQL12

SELECT
	Coalesce(p."Value1", 100) + 50
FROM
	"Parent" p

