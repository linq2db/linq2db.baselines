-- PostgreSQL.11 PostgreSQL
SELECT
	t."Id",
	COVAR_POP(t."DoubleValue", t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

