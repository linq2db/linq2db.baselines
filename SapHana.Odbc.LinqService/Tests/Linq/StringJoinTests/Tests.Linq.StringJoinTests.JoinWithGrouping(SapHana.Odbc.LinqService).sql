BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"g_1"."Id",
	STRING_AGG(Coalesce("g_1"."NullableValue", ''), ', '),
	STRING_AGG("g_1"."NotNullableValue", ', ')
FROM
	"SampleClass" "g_1"
GROUP BY
	"g_1"."Id"
ORDER BY
	"g_1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

