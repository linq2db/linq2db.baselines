-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."OtherId",
	"a_Association"."Id"
FROM
	"GuidConvertedOwner" "t1"
		LEFT JOIN "GuidConvertedTarget" "a_Association" ON "t1"."OtherId" = RTrim(Char("a_Association"."Id"))

