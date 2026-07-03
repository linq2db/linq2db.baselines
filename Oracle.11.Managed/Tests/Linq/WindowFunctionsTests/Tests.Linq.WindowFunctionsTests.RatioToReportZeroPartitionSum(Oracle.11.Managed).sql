-- Oracle.11.Managed Oracle11

SELECT
	t."Id",
	RATIO_TO_REPORT(t."IntValue") OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

