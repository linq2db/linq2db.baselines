BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"ft"."Id",
	"t"."Id",
	"t"."FactId",
	"t"."Name"
FROM
	"Fact" "ft"
		LEFT JOIN "Tag" "t" ON "t"."FactId" = "ft"."Id"
WHERE
	"ft"."Id" > 3
ORDER BY
	"ft"."Id"

