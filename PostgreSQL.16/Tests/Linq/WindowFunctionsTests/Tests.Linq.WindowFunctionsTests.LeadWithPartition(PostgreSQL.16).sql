-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t."Id",
	LEAD(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

