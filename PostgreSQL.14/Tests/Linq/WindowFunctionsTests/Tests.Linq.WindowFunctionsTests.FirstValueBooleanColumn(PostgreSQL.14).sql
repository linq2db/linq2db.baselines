-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t."Id",
	FIRST_VALUE(t."BoolValue") OVER (ORDER BY t."Id" DESC),
	FIRST_VALUE(t."NullableBoolValue") OVER (ORDER BY t."Id" DESC),
	FIRST_VALUE((t."IntValue"::decimal % 20)::decimal = 0) OVER (ORDER BY t."Id" DESC)
FROM
	"WindowFunctionTestEntity" t
ORDER BY
	t."Id"

