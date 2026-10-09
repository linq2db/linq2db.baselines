-- DB2 DB2.LUW DB2LUW
SELECT
	"e"."Id",
	"j"."Value1" + 1
FROM
	"ClientCalcEntity" "e"
		LEFT JOIN "ClientCalcEntity" "j" ON "j"."Id" = "e"."Id" + 1000

