-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*) FILTER (WHERE t."IntValue" > 20) OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

