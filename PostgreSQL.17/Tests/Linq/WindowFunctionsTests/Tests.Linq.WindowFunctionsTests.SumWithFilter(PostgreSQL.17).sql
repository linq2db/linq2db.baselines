-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	SUM(t."IntValue") FILTER (WHERE t."CategoryId" = 1) OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

