BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TableWithIdentity')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TableWithIdentity"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TableWithIdentity')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TableWithIdentity"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithIdentity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithIdentity"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithIdentity')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TableWithIdentity"
			(
				"Id"    Int  NOT NULL,
				"Value" Int  NOT NULL,

				CONSTRAINT "PK_TableWithIdentity" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TableWithIdentity')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_TableWithIdentity"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TableWithIdentity')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_TableWithIdentity" FOR "TableWithIdentity"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_TableWithIdentity", 1);
			END
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value Integer -- Int32
SET     @value = 123

INSERT INTO "TableWithIdentity"
(
	"Id",
	"Value"
)
VALUES
(
	543,
	@value
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TableWithIdentity')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TableWithIdentity"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TableWithIdentity')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TableWithIdentity"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithIdentity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithIdentity"';
END

