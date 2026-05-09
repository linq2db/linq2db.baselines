-- DB2 DB2.LUW DB2LUW

SELECT
	Coalesce("t"."Value1", '') || "t"."Value2"
FROM
	"StringConcatNullEntity" "t"
ORDER BY
	"t".ID

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."Value1",
	"t1"."Value2"
FROM
	"StringConcatNullEntity" "t1"

