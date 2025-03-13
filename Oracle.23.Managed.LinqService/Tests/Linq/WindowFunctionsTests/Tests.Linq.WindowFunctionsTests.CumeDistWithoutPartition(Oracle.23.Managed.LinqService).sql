BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
	CUME_DIST() OVER (ORDER BY x."Timestamp"),
	CUME_DIST() OVER (ORDER BY x."Value"),
	CUME_DIST() OVER (ORDER BY x."Timestamp" DESC),
	CUME_DIST() OVER (ORDER BY x."Value" DESC),
	CUME_DIST() OVER (ORDER BY x."Timestamp", x."Value"),
	CUME_DIST() OVER (ORDER BY x."Timestamp" DESC, x."Value" DESC)
FROM
	"WindowFunctionTestEntity" x
ORDER BY
	x."Id"

