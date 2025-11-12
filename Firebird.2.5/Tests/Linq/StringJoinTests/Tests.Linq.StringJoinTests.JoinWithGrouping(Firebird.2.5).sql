-- Firebird.2.5 Firebird

SELECT
	"g_1"."Id",
	LIST(Coalesce("g_1"."NullableValue", ''), ', '),
	LIST("g_1"."NotNullableValue", ', ')
FROM
	"SampleClass" "g_1"
GROUP BY
	"g_1"."Id"
ORDER BY
	"g_1"."Id"

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

