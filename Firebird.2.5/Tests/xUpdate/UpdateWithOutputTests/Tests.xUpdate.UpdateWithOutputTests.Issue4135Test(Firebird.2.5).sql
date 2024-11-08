BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4135Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4135Table"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4135Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4135Table"
			(
				"Id"          Int                                    NOT NULL,
				"Name"        VarChar(255) CHARACTER SET UNICODE_FSS,
				"NeedsUpdate" CHAR(1)                                NOT NULL,

				CONSTRAINT "PK_Issue4135Table" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Issue4135Table"
(
	"Id",
	"Name",
	"NeedsUpdate"
)
SELECT 1,CAST('name1' AS VarChar(255) CHARACTER SET UNICODE_FSS),'1' FROM rdb$database UNION ALL
SELECT 2,'name2','0' FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 4

UPDATE
	"Issue4135Table" "e"
SET
	"NeedsUpdate" = '0'
WHERE
	"e"."NeedsUpdate" = '1'
ORDER BY
	"e"."Id"
ROWS @take
RETURNING
	OLD."Id",
	OLD."Name",
	OLD."NeedsUpdate"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4135Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4135Table"';
END

