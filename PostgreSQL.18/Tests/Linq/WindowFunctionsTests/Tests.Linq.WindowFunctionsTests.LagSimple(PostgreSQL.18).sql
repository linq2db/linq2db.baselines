-- PostgreSQL.18 PostgreSQL

SELECT
	t."Id",
	LAG(t."IntValue") OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

