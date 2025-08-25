BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	LISTAGG("g_1"."Value1", ' -> ')
FROM
	"SampleClass" "g_1"
GROUP BY
	"g_1"."Id",
	"g_1"."Value1"

