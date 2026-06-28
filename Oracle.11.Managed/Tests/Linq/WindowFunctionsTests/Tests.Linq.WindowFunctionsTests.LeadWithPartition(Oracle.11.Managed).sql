-- Oracle.11.Managed Oracle11

SELECT
	t."Id",
	LEAD(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

