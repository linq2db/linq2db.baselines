-- Oracle.11.Managed Oracle11

SELECT
	SUM(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id"),
	SUM(t."NullableIntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id"),
	SUM(t."LongValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id"),
	SUM(t."NullableLongValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id"),
	SUM(t."DoubleValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id"),
	SUM(t."NullableDoubleValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id"),
	SUM(t."DecimalValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id"),
	SUM(t."NullableDecimalValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id"),
	SUM(t."FloatValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id"),
	SUM(t."NullableFloatValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id"),
	SUM(CAST(t."ShortValue" AS Int)) OVER (PARTITION BY t."CategoryId" ORDER BY t."Id"),
	SUM(CAST(t."NullableShortValue" AS Int)) OVER (PARTITION BY t."CategoryId" ORDER BY t."Id"),
	SUM(CAST(t."ByteValue" AS Int)) OVER (PARTITION BY t."CategoryId" ORDER BY t."Id"),
	SUM(CAST(t."NullableByteValue" AS Int)) OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

