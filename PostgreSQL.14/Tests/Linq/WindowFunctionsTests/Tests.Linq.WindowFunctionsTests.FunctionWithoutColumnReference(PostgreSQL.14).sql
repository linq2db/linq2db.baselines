-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	SUM(t."IntValue") OVER () > 0
FROM
	"WindowFunctionTestEntity" t

