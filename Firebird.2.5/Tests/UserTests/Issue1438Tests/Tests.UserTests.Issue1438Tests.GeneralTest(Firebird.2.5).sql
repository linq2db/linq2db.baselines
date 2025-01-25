BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue1438')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Issue1438"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue1438')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Issue1438"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1438')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1438"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1438')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1438"
			(
				"Id"  Int      NOT NULL,
				"Has" CHAR(1)  NOT NULL,

				CONSTRAINT "PK_Issue1438" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue1438')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Issue1438"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue1438')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Issue1438" FOR "Issue1438"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Issue1438", 1);
			END
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Has Char -- String
SET     @Has = '1'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "Issue1438"
(
	"Has"
)
VALUES
(
	@Has
)
RETURNING
	"Id"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT FIRST 2
	"t1"."Id",
	"t1"."Has"
FROM
	"Issue1438" "t1"
WHERE
	"t1"."Id" = @id

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue1438')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Issue1438"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue1438')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Issue1438"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1438')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1438"';
END

