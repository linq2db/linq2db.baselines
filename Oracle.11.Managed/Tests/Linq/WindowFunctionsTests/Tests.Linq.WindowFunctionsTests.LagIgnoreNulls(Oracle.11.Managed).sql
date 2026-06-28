-- Oracle.11.Managed Oracle11

SELECT
	t."Id",
	LAG(t."IntValue") IGNORE NULLS OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

