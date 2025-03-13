BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	SUM(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id" RANGE BETWEEN 1 PRECEDING AND 2 FOLLOWING),
	SUM(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id" RANGE BETWEEN 1 PRECEDING AND 2 FOLLOWING)
FROM
	"WindowFunctionTestEntity" t

