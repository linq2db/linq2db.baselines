-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."Id",
	t."IntValue"::Float / SUM(t."IntValue") OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

