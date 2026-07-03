-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	t."Id",
	REGR_SXX(t."DoubleValue", t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

