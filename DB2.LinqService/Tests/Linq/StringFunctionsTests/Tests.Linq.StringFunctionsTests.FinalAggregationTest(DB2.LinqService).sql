BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	LISTAGG("t"."Value1", ' -> ')
FROM
	"SampleClass" "t"

