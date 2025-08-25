BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t1"."Id",
	"t1"."OtherId",
	"a_Association"."Id"
FROM
	"Issue3791Table" "t1"
		LEFT JOIN "Issue3791GuidTable" "a_Association" ON "t1"."OtherId" = Lower(UUID_TO_CHAR("a_Association"."Id"))

