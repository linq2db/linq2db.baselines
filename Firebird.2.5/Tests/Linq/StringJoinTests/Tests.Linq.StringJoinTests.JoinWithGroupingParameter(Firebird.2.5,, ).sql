-- Firebird.2.5 Firebird
DECLARE @separator VarChar(2) -- String
SET     @separator = ', '

SELECT
	"g_1"."Id",
	Coalesce(LIST(Coalesce("g_1"."NullableValue", ''), CAST(@separator AS VARCHAR(2))), ''),
	Coalesce(LIST("g_1"."NotNullableValue", CAST(@separator AS VARCHAR(2))), '')
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

