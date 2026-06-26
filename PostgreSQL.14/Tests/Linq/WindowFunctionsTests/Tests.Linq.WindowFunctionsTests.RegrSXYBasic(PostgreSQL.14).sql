-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."Id",
	REGR_SXY(t."DoubleValue", t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

