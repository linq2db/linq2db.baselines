BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."OtherId",
	"a_Association"."Id"
FROM
	"Issue3791Table" "t1"
		LEFT JOIN "Issue3791GuidTable" "a_Association" ON "t1"."OtherId" = RTrim(Char("a_Association"."Id"))

