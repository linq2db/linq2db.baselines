-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	REGR_SLOPE(t."DoubleValue", t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

