-- PostgreSQL.13 PostgreSQL

SELECT
	t."Id",
	VAR_SAMP(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

