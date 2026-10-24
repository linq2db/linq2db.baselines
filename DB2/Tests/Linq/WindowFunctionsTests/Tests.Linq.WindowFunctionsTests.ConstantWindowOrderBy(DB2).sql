-- DB2 DB2.LUW DB2LUW
SELECT
	"t"."Id",
	ROW_NUMBER() OVER (),
	ROW_NUMBER() OVER (ORDER BY "t"."Id"),
	ROW_NUMBER() OVER (ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

