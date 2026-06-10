-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	SUM(p."Value1") OVER (ORDER BY p."Value1" NULLS FIRST)
FROM
	"Parent" p

