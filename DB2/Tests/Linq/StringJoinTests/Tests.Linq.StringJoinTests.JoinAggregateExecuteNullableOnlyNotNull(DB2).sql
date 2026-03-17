-- DB2 DB2.LUW DB2LUW

SELECT
	Coalesce(LISTAGG("t1"."NullableValue", ', ') WITHIN GROUP (ORDER BY "t1"."NotNullableValue"), '')
FROM
	"SampleClass" "t1"

