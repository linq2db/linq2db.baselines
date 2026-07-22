-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	x."Id",
	x."Name",
	x."CategoryId",
	x."Value",
	x."Timestamp",
	x."IntValue",
	x."NullableIntValue",
	x."LongValue",
	x."NullableLongValue",
	x."DoubleValue",
	x."NullableDoubleValue",
	x."DecimalValue",
	x."NullableDecimalValue",
	x."FloatValue",
	x."NullableFloatValue",
	x."ShortValue",
	x."NullableShortValue",
	x."ByteValue",
	x."NullableByteValue",
	x."BoolValue",
	x."NullableBoolValue",
	RANK() OVER (PARTITION BY x."IntValue" = 20 ORDER BY x."Id"),
	RANK() OVER (PARTITION BY x."CategoryId", x."IntValue" = 20 ORDER BY x."Id"),
	RANK() OVER (PARTITION BY x."NullableIntValue" IS NOT NULL ORDER BY x."Id")
FROM
	"WindowFunctionTestEntity" x
ORDER BY
	x."Id"

