-- Oracle.11.Managed Oracle11

SELECT
	t."Id",
	LAG(t."IntValue") OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

