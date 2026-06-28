-- Oracle.11.Managed Oracle11

SELECT
	t."Id",
	REGR_INTERCEPT(t."DoubleValue", t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

