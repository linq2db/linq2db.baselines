-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	FIRST_VALUE(t."BoolValue") OVER (ORDER BY t."Id" DESC),
	FIRST_VALUE(t."NullableBoolValue") OVER (ORDER BY t."Id" DESC),
	FIRST_VALUE(CASE
		WHEN MOD(t."IntValue", 20) = 0 THEN 1
		ELSE 0
	END) OVER (ORDER BY t."Id" DESC)
FROM
	"WindowFunctionTestEntity" t
ORDER BY
	t."Id"

