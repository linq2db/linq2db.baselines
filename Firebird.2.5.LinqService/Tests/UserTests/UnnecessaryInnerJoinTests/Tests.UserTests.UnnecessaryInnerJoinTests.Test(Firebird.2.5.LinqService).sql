BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Table1')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Table1"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Table1')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Table1"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table1"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table1')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table1"
			(
				"Field1" Int  NOT NULL,
				"Field2" Int  NOT NULL,

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
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Table2')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Table2"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Table2')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Table2"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table2"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table2"
			(
				"Field2" Int  NOT NULL,

				CONSTRAINT "PK_Table2" PRIMARY KEY ("Field2")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Table2')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Table2"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Table2')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Table2" FOR "Table2"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Field2" = GEN_ID("GIDENTITY_Table2", 1);
			END
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Field2"
FROM
	"Table2" "t1"
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			"Table1" "x"
		WHERE
			"t1"."Field2" = "x"."Field2" AND CAST("x"."Field1" AS BigInt) IN (1, 2, 3)
	)

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Table2')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Table2"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Table2')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Table2"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table2"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Table1')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Table1"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Table1')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Table1"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table1"';
END

