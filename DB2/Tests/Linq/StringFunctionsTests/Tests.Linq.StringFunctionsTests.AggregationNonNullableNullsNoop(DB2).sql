-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG("t1"."Value2", ' -> ') WITHIN GROUP (ORDER BY "t1"."Id")
FROM
	"SampleClass" "t1"

-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG("t1"."Value2", ' -> ') WITHIN GROUP (ORDER BY "t1"."Id")
FROM
	"SampleClass" "t1"

