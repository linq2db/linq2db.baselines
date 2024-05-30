BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue681Table4')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Issue681Table4"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue681Table4')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Issue681Table4"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue681Table4')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue681Table4"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue681Table4')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue681Table4"
			(
				ID      Int  NOT NULL,
				"Value" Int  NOT NULL,

				CONSTRAINT "PK_Issue681Table4" PRIMARY KEY (ID)
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue681Table4')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Issue681Table4"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue681Table4')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Issue681Table4" FOR "Issue681Table4"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW.ID = GEN_ID("GIDENTITY_Issue681Table4", 1);
			END
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "Issue681Table4"
(
	"Value"
)
VALUES
(
	@Value
)
RETURNING
	ID

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue681Table4')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Issue681Table4"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue681Table4')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Issue681Table4"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue681Table4')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue681Table4"';
END

