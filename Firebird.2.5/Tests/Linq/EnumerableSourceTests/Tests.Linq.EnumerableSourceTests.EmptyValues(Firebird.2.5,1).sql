BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"TableToInsert" "t"
		INNER JOIN (SELECT CAST(NULL AS Int) "Id", CAST(NULL AS VARCHAR(1)) "Value" FROM rdb$database WHERE 1 = 0) "r" ON "t"."Id" = "r"."Id" AND ("t"."Value" = "r"."Value" OR "t"."Value" IS NULL AND "r"."Value" IS NULL)

