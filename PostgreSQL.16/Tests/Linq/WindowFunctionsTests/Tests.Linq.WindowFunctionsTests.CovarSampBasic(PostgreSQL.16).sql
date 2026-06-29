-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	t."Id",
	COVAR_SAMP(t."DoubleValue", t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

