-- DB2 DB2.LUW DB2LUW
SELECT
	"t"."Id",
	ROW_NUMBER() OVER ()
FROM
	"WindowFunctionTestEntity" "t"

