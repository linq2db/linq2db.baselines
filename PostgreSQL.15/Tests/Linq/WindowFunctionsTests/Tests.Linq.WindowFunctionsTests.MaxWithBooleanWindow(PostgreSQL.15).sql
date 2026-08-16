-- PostgreSQL.15 PostgreSQL12
SELECT
	t."Id",
	MAX(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."IntValue" = 20, t."Id"),
	MAX(t."IntValue") OVER (PARTITION BY t."IntValue" = 20 ORDER BY t."Id"),
	MAX(t."IntValue") OVER (PARTITION BY t."NullableIntValue" IS NOT NULL ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

