BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
	ROW_NUMBER() OVER (ORDER BY x."Timestamp"),
	ROW_NUMBER() OVER (ORDER BY x."Value"),
	ROW_NUMBER() OVER (ORDER BY x."Timestamp" DESC),
	ROW_NUMBER() OVER (ORDER BY x."Value" DESC),
	ROW_NUMBER() OVER (ORDER BY x."Timestamp", x."Value"),
	ROW_NUMBER() OVER (ORDER BY x."Timestamp" DESC, x."Value" DESC)
FROM
	"WindowFunctionTestEntity" x
ORDER BY
	x."Id"

