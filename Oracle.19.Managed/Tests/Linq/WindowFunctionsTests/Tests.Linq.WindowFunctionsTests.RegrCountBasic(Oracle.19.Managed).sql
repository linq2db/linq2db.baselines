-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	REGR_COUNT(t."DoubleValue", t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

