-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG("t1"."Value1", ' -> ')
FROM
	"SampleClass" "t1"

