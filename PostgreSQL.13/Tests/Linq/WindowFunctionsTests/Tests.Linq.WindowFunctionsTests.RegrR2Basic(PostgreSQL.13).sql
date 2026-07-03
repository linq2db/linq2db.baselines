-- PostgreSQL.13 PostgreSQL13

SELECT
	t."Id",
	REGR_R2(t."DoubleValue", t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

