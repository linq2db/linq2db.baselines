BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ReviewIndexes')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ReviewIndexes"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT 1 AS "source_Id" FROM rdb$database) "Source"
(
	"source_Id"
)
ON ("Target"."Id" = "Source"."source_Id")

WHEN MATCHED THEN
UPDATE
SET
	"Id" = 2,
	"Value" = '3'

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ReviewIndexes')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ReviewIndexes"';
END

