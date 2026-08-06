-- Oracle.11.Managed Oracle11
SELECT
	t."Id",
	VAR_SAMP(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

