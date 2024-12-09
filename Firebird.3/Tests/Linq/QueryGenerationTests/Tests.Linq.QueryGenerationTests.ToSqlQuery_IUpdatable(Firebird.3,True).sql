BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TableWithIdentity')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TableWithIdentity"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TableWithIdentity')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TableWithIdentity"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithIdentity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithIdentity"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO "TableWithIdentity"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Firebird.3 Firebird3

UPDATE
	"TableWithIdentity" "t1"
SET
	"Value" = 123

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TableWithIdentity')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TableWithIdentity"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TableWithIdentity')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TableWithIdentity"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithIdentity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithIdentity"';
END

