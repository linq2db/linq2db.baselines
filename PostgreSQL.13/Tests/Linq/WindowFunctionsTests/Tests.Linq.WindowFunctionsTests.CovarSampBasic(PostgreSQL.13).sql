-- PostgreSQL.13 PostgreSQL

SELECT
	t."Id",
	COVAR_SAMP(t."DoubleValue", t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

