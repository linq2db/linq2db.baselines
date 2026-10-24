-- DB2 DB2.LUW DB2LUW
SELECT
	"t"."Id",
	NTH_VALUE("t"."IntValue", 2) OVER ()
FROM
	"WindowFunctionTestEntity" "t"

