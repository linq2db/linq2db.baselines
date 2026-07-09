-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	t."Id",
	REGR_INTERCEPT(t."DoubleValue", t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

