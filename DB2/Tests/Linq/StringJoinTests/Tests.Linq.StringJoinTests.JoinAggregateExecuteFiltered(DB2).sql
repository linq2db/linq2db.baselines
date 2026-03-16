-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG(Coalesce("x"."NullableValue", ''), ', ')
FROM
	"SampleClass" "x"
WHERE
	"x"."NullableValue" IS NOT NULL AND "x"."NullableValue" IN ('A', 'B')

