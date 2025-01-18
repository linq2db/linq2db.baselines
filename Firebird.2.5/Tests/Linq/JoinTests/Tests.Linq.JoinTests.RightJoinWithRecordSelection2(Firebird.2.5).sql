BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"fact_1"."Id",
	"t1"."Id",
	"t1"."FactId",
	"t1"."Name"
FROM
	"Tag" "t1"
		RIGHT JOIN "Fact" "fact_1" ON "t1"."FactId" = "fact_1"."Id"
WHERE
	"fact_1"."Id" > 3

