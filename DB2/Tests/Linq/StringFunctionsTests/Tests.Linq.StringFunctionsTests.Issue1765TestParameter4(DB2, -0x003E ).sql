-- DB2 DB2.LUW DB2LUW
DECLARE @separator VarChar(4) -- String
SET     @separator = ' -> '

SELECT
	MAX("g_1"."Value4"),
	LISTAGG("g_1"."Value4", CAST(@separator AS NVarChar(4)))
FROM
	"SampleClass" "g_1"
GROUP BY
	"g_1"."Id",
	"g_1"."Value4"

