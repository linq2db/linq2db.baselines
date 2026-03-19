-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"leftTag"."Id",
	"leftTag"."FactId",
	"leftTag"."Name"
FROM
	"Fact" "t1"
		LEFT JOIN "Tag" "leftTag" ON "leftTag"."FactId" = "t1"."Id"
WHERE
	"t1"."Id" > 3
ORDER BY
	"t1"."Id"

