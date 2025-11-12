-- DB2 DB2.LUW DB2LUW
DECLARE @separator VarChar(2) -- String
SET     @separator = ', '

SELECT
	"g_1"."Id",
	Coalesce(LISTAGG(Coalesce("g_1"."NullableValue", ''), CAST(@separator AS NVarChar(2))), ''),
	Coalesce(LISTAGG("g_1"."NotNullableValue", CAST(@separator AS NVarChar(2))), '')
FROM
	"SampleClass" "g_1"
GROUP BY
	"g_1"."Id"
ORDER BY
	"g_1"."Id"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

