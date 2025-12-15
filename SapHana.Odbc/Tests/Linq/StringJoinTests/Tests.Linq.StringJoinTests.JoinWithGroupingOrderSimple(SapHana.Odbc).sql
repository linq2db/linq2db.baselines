-- SapHana.Odbc SapHanaOdbc

SELECT
	"g_1"."Id",
	Coalesce(STRING_AGG("g_1"."NullableValue", ', ' ORDER BY "g_1"."NullableValue", "g_1"."Id"), ''),
	STRING_AGG(Coalesce("g_1"."NullableValue", ''), ', ' ORDER BY "g_1"."NullableValue" NULLS FIRST)
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

