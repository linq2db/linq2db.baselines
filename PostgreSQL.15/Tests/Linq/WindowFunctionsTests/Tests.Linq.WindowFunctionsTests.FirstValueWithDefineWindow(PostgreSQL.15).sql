-- PostgreSQL.15 PostgreSQL

SELECT
	t."Id",
	FIRST_VALUE(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

