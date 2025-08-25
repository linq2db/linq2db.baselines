BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	LISTAGG("t1"."Value4", ' -> ')
FROM
	"SampleClass" "t1"

