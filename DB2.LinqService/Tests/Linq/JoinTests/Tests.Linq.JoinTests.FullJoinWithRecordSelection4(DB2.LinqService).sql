BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"f"."Id",
	"ft"."Id",
	"ft"."FactId",
	"ft"."Name"
FROM
	"Tag" "ft"
		FULL JOIN "Fact" "f" ON "ft"."FactId" = "f"."Id"
WHERE
	"f"."Id" > 3 OR "ft"."FactId" > 3

