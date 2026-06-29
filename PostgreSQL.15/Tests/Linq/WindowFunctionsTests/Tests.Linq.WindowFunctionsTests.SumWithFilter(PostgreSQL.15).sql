-- PostgreSQL.15 PostgreSQL13

SELECT
	SUM(t."IntValue") FILTER (WHERE t."CategoryId" = 1) OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

