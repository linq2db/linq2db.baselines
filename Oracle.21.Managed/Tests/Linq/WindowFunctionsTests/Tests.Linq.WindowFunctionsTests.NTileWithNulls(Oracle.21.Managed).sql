BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

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
	NTILE(4) OVER (PARTITION BY x."CategoryId" ORDER BY x."Timestamp" NULLS FIRST),
	NTILE(4) OVER (PARTITION BY x."CategoryId" ORDER BY x."Timestamp" DESC NULLS LAST)
FROM
	"WindowFunctionTestEntity" x
ORDER BY
	x."Id"

