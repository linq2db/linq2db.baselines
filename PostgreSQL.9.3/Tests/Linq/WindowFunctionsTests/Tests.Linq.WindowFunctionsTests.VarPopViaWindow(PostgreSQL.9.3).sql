-- PostgreSQL.9.3 PostgreSQL
SELECT
	t."Id",
	VAR_POP(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

