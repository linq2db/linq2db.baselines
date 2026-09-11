-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	RATIO_TO_REPORT(t."IntValue") OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

