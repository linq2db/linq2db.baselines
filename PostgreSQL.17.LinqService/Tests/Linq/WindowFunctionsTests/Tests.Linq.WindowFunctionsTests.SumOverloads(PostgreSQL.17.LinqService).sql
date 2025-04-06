BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
	SUM(t."ShortValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id"),
	SUM(t."NullableShortValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id"),
	SUM(t."ByteValue"::Int) OVER (PARTITION BY t."CategoryId" ORDER BY t."Id"),
	SUM(t."NullableByteValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

