-- PostgreSQL.9.5 PostgreSQL
SELECT
	t."Id",
	FIRST_VALUE(t."BoolValue") OVER (ORDER BY t."Id" DESC),
	FIRST_VALUE(t."NullableBoolValue") OVER (ORDER BY t."Id" DESC),
	FIRST_VALUE(Floor(t."IntValue"::decimal % 20)::Int = 0) OVER (ORDER BY t."Id" DESC)
FROM
	"WindowFunctionTestEntity" t
ORDER BY
	t."Id"

