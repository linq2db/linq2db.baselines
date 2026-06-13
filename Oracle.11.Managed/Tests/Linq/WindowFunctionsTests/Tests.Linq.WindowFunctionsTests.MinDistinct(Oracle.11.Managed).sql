-- Oracle.11.Managed Oracle11

SELECT
	t."Id",
	MIN(DISTINCT t."IntValue") OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

