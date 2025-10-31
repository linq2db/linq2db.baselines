-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG("t"."Value1", ' -> ') WITHIN GROUP (ORDER BY "t"."Value1")
FROM
	"SampleClass" "t"

-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG("t"."Value1", ' -> ') WITHIN GROUP (ORDER BY "t"."Value1")
FROM
	"SampleClass" "t"

-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG("t"."Value1", ' -> ') WITHIN GROUP (ORDER BY "t"."Value1" DESC)
FROM
	"SampleClass" "t"

-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG("t"."Value1", ' -> ') WITHIN GROUP (ORDER BY "t"."Value1" DESC)
FROM
	"SampleClass" "t"

