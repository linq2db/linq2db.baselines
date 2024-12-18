BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableToInsert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableToInsert"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableToInsert')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TableToInsert"
			(
				"Id"    Int                                    NOT NULL,
				"Value" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_TableToInsert" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"TableToInsert" "t"
		INNER JOIN (SELECT NULL "Id", NULL "Value" FROM rdb$database WHERE 1 = 0) "r" ON "t"."Id" = "r"."Id" AND ("t"."Value" = "r"."Value" AND "t"."Value" IS NOT NULL AND "r"."Value" IS NOT NULL OR "t"."Value" IS NULL AND "r"."Value" IS NULL)

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableToInsert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableToInsert"';
END

