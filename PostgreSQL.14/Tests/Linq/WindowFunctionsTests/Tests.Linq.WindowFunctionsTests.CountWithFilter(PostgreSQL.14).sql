-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	COUNT(*) FILTER (WHERE t."IntValue" > 20) OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

