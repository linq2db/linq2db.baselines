-- PostgreSQL.15 PostgreSQL13

SELECT
	t."Id",
	LAG(t."IntValue") OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

