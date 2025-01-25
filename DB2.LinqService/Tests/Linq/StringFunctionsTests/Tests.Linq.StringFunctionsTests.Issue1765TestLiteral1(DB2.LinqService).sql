BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG("t"."Value4", ' -> ')
FROM
	"SampleClass" "t"

