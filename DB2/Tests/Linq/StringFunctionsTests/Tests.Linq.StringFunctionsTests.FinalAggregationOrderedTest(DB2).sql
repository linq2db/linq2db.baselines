-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG("t1"."Value1", ' -> ') WITHIN GROUP (ORDER BY "t1"."Value1")
FROM
	"SampleClass" "t1"

-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG("t1"."Value1", ' -> ') WITHIN GROUP (ORDER BY "t1"."Value1")
FROM
	"SampleClass" "t1"

-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG("t1"."Value1", ' -> ') WITHIN GROUP (ORDER BY "t1"."Value1" DESC)
FROM
	"SampleClass" "t1"

-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG("t1"."Value1", ' -> ') WITHIN GROUP (ORDER BY "t1"."Value1" DESC)
FROM
	"SampleClass" "t1"

