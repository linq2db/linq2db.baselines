-- PostgreSQL.18 PostgreSQL12
SELECT
	t."Id",
	VAR_POP(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

