-- PostgreSQL.11 PostgreSQL
SELECT
	t."Id",
	LEAD(t."IntValue") OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

