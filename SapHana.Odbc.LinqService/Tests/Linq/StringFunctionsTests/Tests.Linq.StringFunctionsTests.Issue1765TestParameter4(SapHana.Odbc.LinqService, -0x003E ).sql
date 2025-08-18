BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @separator NVarChar(4) -- String
SET     @separator = ' -> '

SELECT
	MAX("g_1"."Value4"),
	STRING_AGG("g_1"."Value4", ?)
FROM
	"SampleClass" "g_1"
GROUP BY
	"g_1"."Id",
	"g_1"."Value4"

