-- PostgreSQL.9.2 PostgreSQL
SELECT
	t."Id",
	REGR_INTERCEPT(t."DoubleValue", t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

