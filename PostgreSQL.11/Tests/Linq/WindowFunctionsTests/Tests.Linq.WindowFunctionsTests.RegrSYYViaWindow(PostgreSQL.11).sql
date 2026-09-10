-- PostgreSQL.11 PostgreSQL
SELECT
	t."Id",
	REGR_SYY(t."DoubleValue", t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

