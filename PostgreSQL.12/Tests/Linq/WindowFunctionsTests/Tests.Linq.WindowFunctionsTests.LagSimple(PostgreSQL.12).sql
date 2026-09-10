-- PostgreSQL.12 PostgreSQL12
SELECT
	t."Id",
	LAG(t."IntValue") OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

