-- PostgreSQL.18 PostgreSQL

SELECT
	t."Id",
	VARIANCE(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

