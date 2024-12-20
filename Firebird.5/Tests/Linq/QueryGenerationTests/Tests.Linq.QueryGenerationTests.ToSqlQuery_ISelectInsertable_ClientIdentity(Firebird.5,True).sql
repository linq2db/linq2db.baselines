BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TableWithIdentitySrc')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TableWithIdentitySrc"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TableWithIdentitySrc')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TableWithIdentitySrc"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithIdentitySrc')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithIdentitySrc"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithIdentitySrc')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TableWithIdentitySrc"
			(
				"Id"    Int  NOT NULL,
				"Value" Int  NOT NULL,

				CONSTRAINT "PK_TableWithIdentitySrc" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TableWithIdentitySrc')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_TableWithIdentitySrc"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TableWithIdentitySrc')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_TableWithIdentitySrc" FOR "TableWithIdentitySrc"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_TableWithIdentitySrc", 1);
			END
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TableWithIdentity')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TableWithIdentity"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TableWithIdentity')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TableWithIdentity"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithIdentity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithIdentity"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO "TableWithIdentitySrc"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "TableWithIdentity"
(
	"Id",
	"Value"
)
SELECT
	345,
	"t1"."Value" + 123
FROM
	"TableWithIdentitySrc" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TableWithIdentity')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TableWithIdentity"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TableWithIdentity')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TableWithIdentity"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithIdentity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithIdentity"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TableWithIdentitySrc')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TableWithIdentitySrc"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TableWithIdentitySrc')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TableWithIdentitySrc"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithIdentitySrc')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithIdentitySrc"';
END

