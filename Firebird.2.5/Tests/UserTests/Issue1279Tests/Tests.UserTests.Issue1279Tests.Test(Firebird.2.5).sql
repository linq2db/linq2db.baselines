BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue1279Table')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Issue1279Table"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue1279Table')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Issue1279Table"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1279Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1279Table"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1279Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1279Table"
			(
				"Id"      Int       NOT NULL,
				"CharFld" NChar(1)  NOT NULL,

				CONSTRAINT "PK_Issue1279Table" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue1279Table')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Issue1279Table"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue1279Table')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Issue1279Table" FOR "Issue1279Table"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Issue1279Table", 1);
			END
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @CharFld Char -- String
SET     @CharFld = 'P'

INSERT INTO "Issue1279Table"
(
	"CharFld"
)
VALUES
(
	@CharFld
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"t1"."Id",
	"t1"."CharFld"
FROM
	"Issue1279Table" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue1279Table')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Issue1279Table"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue1279Table')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Issue1279Table"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1279Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1279Table"';
END

