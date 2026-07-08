-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

SELECT
	t."Id",
	REGR_AVGY(t."DoubleValue", t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

