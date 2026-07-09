-- PostgreSQL.19 PostgreSQL13

SELECT
	COUNT(*) FILTER (WHERE t."IntValue" > 20) OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

