-- PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	SUM(t."IntValue") OVER () > 0
FROM
	"WindowFunctionTestEntity" t

