-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	COUNT(t."NullableIntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

