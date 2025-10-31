-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG("t"."Value1", ' -> ')
FROM
	"SampleClass" "t"

