BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ReviewIndexes')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ReviewIndexes"';
END

BeforeExecute
-- Firebird4 Firebird

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
-- Firebird4 Firebird

MERGE INTO "ReviewIndexes" "Target"
USING
(
	SELECT 1 AS "Id", CAST('2' AS VARCHAR(1)) AS "Value_1" FROM rdb$database) "Source"
(
	"Id",
	"Value_1"
)
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED AND "Source"."Id" > 1 THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."Id",
	"Source"."Value_1"
)

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ReviewIndexes')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ReviewIndexes"';
END

