-- DB2 DB2.LUW DB2LUW

SELECT
	"g_1"."Id",
	LISTAGG(Coalesce("g_1"."NullableValue", ''), ', ') WITHIN GROUP (ORDER BY "g_1"."NotNullableValue", "g_1"."NullableValue" DESC),
	Coalesce(LISTAGG(CASE
		WHEN "g_1"."NullableValue" <> '' THEN "g_1"."NullableValue"
		ELSE NULL
	END, ', ') WITHIN GROUP (ORDER BY "g_1"."NotNullableValue", "g_1"."NullableValue" DESC), ''),
	LISTAGG("g_1"."NotNullableValue", ', ') WITHIN GROUP (ORDER BY "g_1"."NotNullableValue" DESC, "g_1"."NullableValue" DESC),
	LISTAGG(Coalesce("g_1"."NullableValue", ''), ', ') WITHIN GROUP (ORDER BY "g_1"."NotNullableValue" DESC),
	LISTAGG("g_1"."NotNullableValue", ', ') WITHIN GROUP (ORDER BY "g_1"."NotNullableValue" DESC),
	LISTAGG("g_1"."NotNullableValue", ', ') WITHIN GROUP (ORDER BY CASE
		WHEN "g_1"."NullableValue" IS NULL THEN 0
		ELSE 1
	END, "g_1"."NotNullableValue" DESC, "g_1"."NullableValue")
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

