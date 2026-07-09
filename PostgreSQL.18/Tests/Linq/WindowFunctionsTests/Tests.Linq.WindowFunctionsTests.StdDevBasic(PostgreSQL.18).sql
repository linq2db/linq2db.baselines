-- PostgreSQL.18 PostgreSQL12

SELECT
	t."Id",
	STDDEV(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

