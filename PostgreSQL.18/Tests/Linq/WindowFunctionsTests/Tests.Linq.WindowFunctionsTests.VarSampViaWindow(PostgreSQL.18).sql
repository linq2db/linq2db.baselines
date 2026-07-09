-- PostgreSQL.18 PostgreSQL13

SELECT
	t."Id",
	VAR_SAMP(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

