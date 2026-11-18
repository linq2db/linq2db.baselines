-- DB2 DB2.LUW DB2LUW
SELECT
	"t"."Id",
	"t"."CategoryId",
	ROW_NUMBER() OVER (PARTITION BY "t"."CategoryId")
FROM
	"WindowFunctionTestEntity" "t"

