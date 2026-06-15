-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*) FILTER (WHERE t."IntValue" > 20) OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

