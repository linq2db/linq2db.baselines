BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Table1')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Table1"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Table1')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Table1"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table1"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table1')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table1"
			(
				"Field1" Int       NOT NULL,
				"Foeld2" NChar(1),

				CONSTRAINT "PK_Table1" PRIMARY KEY ("Field1")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Table1')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Table1"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Table1')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Table1" FOR "Table1"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Field1" = GEN_ID("GIDENTITY_Table1", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"current_1"."Field1",
	"previous"."Field1"
FROM
	"Table1" "current_1",
	"Table1" "previous"
WHERE
	"current_1"."Foeld2" = "previous"."Foeld2" OR "current_1"."Foeld2" IS NULL AND "previous"."Foeld2" IS NULL

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Table1')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Table1"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Table1')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Table1"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table1"';
END

