-- DB2 DB2.LUW DB2LUW

SELECT
	SUM("p"."Value1") OVER (ORDER BY "p"."Value1" NULLS FIRST)
FROM
	"Parent" "p"

