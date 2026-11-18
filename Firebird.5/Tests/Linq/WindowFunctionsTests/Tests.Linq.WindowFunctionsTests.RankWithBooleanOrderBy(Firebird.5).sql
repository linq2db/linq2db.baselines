-- Firebird.5 Firebird4
SELECT
	"x"."Id",
	"x"."Name",
	"x"."CategoryId",
	"x"."Value",
	"x"."Timestamp",
	"x"."IntValue",
	"x"."NullableIntValue",
	"x"."LongValue",
	"x"."NullableLongValue",
	"x"."DoubleValue",
	"x"."NullableDoubleValue",
	"x"."DecimalValue",
	"x"."NullableDecimalValue",
	"x"."FloatValue",
	"x"."NullableFloatValue",
	"x"."ShortValue",
	"x"."NullableShortValue",
	"x"."ByteValue",
	"x"."NullableByteValue",
	"x"."BoolValue",
	"x"."NullableBoolValue",
	RANK() OVER (ORDER BY "x"."IntValue" = 20),
	RANK() OVER (PARTITION BY "x"."CategoryId" ORDER BY "x"."IntValue" = 20, "x"."Id"),
	RANK() OVER (PARTITION BY "x"."CategoryId" ORDER BY "x"."IntValue" = 20 DESC, "x"."Id"),
	RANK() OVER (ORDER BY "x"."NullableIntValue" IS NOT NULL, "x"."Id")
FROM
	"WindowFunctionTestEntity" "x"
ORDER BY
	"x"."Id"

