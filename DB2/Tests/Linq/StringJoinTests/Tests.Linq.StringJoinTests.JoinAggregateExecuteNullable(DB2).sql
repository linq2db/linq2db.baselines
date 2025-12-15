-- DB2 DB2.LUW DB2LUW

SELECT
	Coalesce(LISTAGG(Coalesce("t1"."NullableValue", ''), ', ') WITHIN GROUP (ORDER BY "t1"."NotNullableValue"), '')
FROM
	"SampleClass" "t1"

