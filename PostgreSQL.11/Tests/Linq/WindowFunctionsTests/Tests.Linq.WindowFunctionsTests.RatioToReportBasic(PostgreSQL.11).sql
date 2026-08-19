-- PostgreSQL.11 PostgreSQL
SELECT
	t."Id",
	t."IntValue"::Float / NULLIF(SUM(t."IntValue") OVER (PARTITION BY t."CategoryId")::Float, 0)
FROM
	"WindowFunctionTestEntity" t

