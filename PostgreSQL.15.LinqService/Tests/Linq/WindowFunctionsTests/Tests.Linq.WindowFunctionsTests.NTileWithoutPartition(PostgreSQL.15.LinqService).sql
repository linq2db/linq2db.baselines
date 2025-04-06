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
	NTILE(4) OVER (ORDER BY x."Timestamp"),
	NTILE(4) OVER (ORDER BY x."Value"),
	NTILE(4) OVER (ORDER BY x."Timestamp" DESC),
	NTILE(4) OVER (ORDER BY x."Value" DESC),
	NTILE(4) OVER (ORDER BY x."Timestamp", x."Value"),
	NTILE(4) OVER (ORDER BY x."Timestamp" DESC, x."Value" DESC)
FROM
	"WindowFunctionTestEntity" x
ORDER BY
	x."Id"

