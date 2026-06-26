-- PostgreSQL.18 PostgreSQL

SELECT
	t."Id",
	LAST_VALUE(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id" ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING)
FROM
	"WindowFunctionTestEntity" t

