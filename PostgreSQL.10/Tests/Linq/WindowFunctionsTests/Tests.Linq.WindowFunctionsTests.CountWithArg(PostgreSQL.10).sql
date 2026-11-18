-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(t."NullableIntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

