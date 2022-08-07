BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_CustomerBase')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_CustomerBase"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_CustomerBase')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_CustomerBase"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CustomerBase')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CustomerBase"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CustomerBase')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "CustomerBase"
			(
				"Id"           Int                                     NOT NULL,
				"ClientType"   NChar(6)                                NOT NULL,
				"Name"         VarChar(255) CHARACTER SET UNICODE_FSS,
				"ContactEmail" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Enabled"      CHAR,

				CONSTRAINT "PK_CustomerBase" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_CustomerBase')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_CustomerBase"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_CustomerBase')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_CustomerBase" FOR "CustomerBase"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_CustomerBase", 1);
			END
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @filter_1 VarChar(6) -- String
SET     @filter_1 = '%test%'
DECLARE @filter_2 VarChar(6) -- String
SET     @filter_2 = '%test%'

SELECT
	"q"."Id",
	"q"."Name",
	"q"."ContactEmail",
	Coalesce("q"."Enabled", 0)
FROM
	"CustomerBase" "q"
WHERE
	"q"."ClientType" = 'Client' AND ("q"."Name" LIKE @filter_1 ESCAPE '~' OR "q"."ContactEmail" LIKE @filter_2 ESCAPE '~')

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_CustomerBase')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_CustomerBase"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_CustomerBase')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_CustomerBase"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CustomerBase')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CustomerBase"';
END

