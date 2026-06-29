-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	t."Id",
	VAR_POP(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

