-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	SUM(p."Value1") OVER (ORDER BY p."Value1" NULLS FIRST)
FROM
	"Parent" p

