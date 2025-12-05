-- SapHana.Odbc SapHanaOdbc
DECLARE @separator NVarChar(2) -- String
SET     @separator = ': '
DECLARE @separator NVarChar(2) -- String
SET     @separator = ': '

SELECT
	"g_1"."Id",
	Coalesce(STRING_AGG(Coalesce("g_1"."NullableValue", ''), ?), ''),
	Coalesce(STRING_AGG("g_1"."NotNullableValue", ?), '')
FROM
	"SampleClass" "g_1"
GROUP BY
	"g_1"."Id"
ORDER BY
	"g_1"."Id"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

