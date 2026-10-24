-- PostgreSQL.9.2 PostgreSQL
SELECT
	t."Id",
	STDDEV_POP(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

