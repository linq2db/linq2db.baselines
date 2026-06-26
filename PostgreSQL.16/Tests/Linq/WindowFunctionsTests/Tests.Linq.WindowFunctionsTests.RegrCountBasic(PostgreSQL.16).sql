-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t."Id",
	REGR_COUNT(t."DoubleValue", t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

