-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	LEAD(t."DoubleValue") OVER (ORDER BY t."Id"),
	LAG(t."DecimalValue") OVER (ORDER BY t."Id"),
	LEAD(t."NullableIntValue") OVER (ORDER BY t."Id"),
	LEAD(t."IntValue") OVER (ORDER BY t."CategoryId", t."Id")
FROM
	"WindowFunctionTestEntity" t

