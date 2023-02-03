BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ReviewIndexes')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ReviewIndexes"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ReviewIndexes')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ReviewIndexes"
			(
				"Id"    Int                                    NOT NULL,
				"Value" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_ReviewIndexes" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

MERGE INTO "ReviewIndexes" "Target"
USING
(
	SELECT 1 AS "Id" FROM rdb$database) "Source"
(
	"Id"
)
ON ("Target"."Id" = "Source"."Id")
WHEN MATCHED AND "Target"."Id" = "Source"."Id" THEN DELETE

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ReviewIndexes')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ReviewIndexes"';
END

