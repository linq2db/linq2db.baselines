BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4135Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4135Table"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4135Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4135Table"
			(
				"Id"          Int                                    NOT NULL,
				"Name"        VarChar(255) CHARACTER SET UNICODE_FSS,
				"NeedsUpdate" BOOLEAN                                NOT NULL,

				CONSTRAINT "PK_Issue4135Table" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "Issue4135Table"
(
	"Id",
	"Name",
	"NeedsUpdate"
)
SELECT 1,CAST('name1' AS VarChar(255) CHARACTER SET UNICODE_FSS),TRUE FROM rdb$database UNION ALL
SELECT 2,'name2',FALSE FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 4

UPDATE
	"Issue4135Table" "e"
SET
	"NeedsUpdate" = FALSE
WHERE
	"e"."NeedsUpdate" = TRUE
ORDER BY
	"e"."Id"
ROWS @take
RETURNING
	OLD."Id",
	OLD."Name",
	OLD."NeedsUpdate"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4135Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4135Table"';
END

