-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	t."Id",
	SUM(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id" GROUPS BETWEEN 1 PRECEDING AND 2 FOLLOWING)
FROM
	"WindowFunctionTestEntity" t

