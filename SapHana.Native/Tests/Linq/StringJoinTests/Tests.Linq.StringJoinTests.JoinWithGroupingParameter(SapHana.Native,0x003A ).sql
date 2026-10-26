-- SapHana.Native SapHana
DECLARE @separator NVarChar(2) -- String
SET     @separator = ': '
DECLARE @separator_1 NVarChar(2) -- String
SET     @separator_1 = ': '

SELECT
	"g_1"."Id",
	Coalesce(STRING_AGG(Coalesce("g_1"."NullableValue", ''), :"separator"), ''),
	Coalesce(STRING_AGG("g_1"."NotNullableValue", :"separator_1"), '')
FROM
	"SampleClass" "g_1"
GROUP BY
	"g_1"."Id"
ORDER BY
	"g_1"."Id"

-- SapHana.Native SapHana
SELECT
	"t1"."PK",
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

