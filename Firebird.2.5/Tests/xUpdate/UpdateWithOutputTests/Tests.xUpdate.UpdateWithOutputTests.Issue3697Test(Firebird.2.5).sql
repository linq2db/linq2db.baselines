BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Test3697')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Test3697"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Test3697')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Test3697"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3697')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Test3697"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3697')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Test3697"
			(
				"Id" Int  NOT NULL,

				CONSTRAINT "PK_Test3697" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Test3697')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Test3697"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Test3697')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Test3697" FOR "Test3697"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Test3697", 1);
			END
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Test3697" DEFAULT VALUES

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Test3697Item')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Test3697Item"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Test3697Item')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Test3697Item"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3697Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Test3697Item"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3697Item')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Test3697Item"
			(
				"Id"     Int  NOT NULL,
				"Value"  Int  NOT NULL,
				"TestId" Int  NOT NULL,

				CONSTRAINT "PK_Test3697Item" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Test3697Item')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Test3697Item"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Test3697Item')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Test3697Item" FOR "Test3697Item"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Test3697Item", 1);
			END
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Test3697Item"
(
	"Value",
	"TestId"
)
SELECT 3,1 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

UPDATE
	"Test3697Item"
SET
	"Value" = 1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Test3697" "a"
				INNER JOIN "Test3697Item" "a_Items" ON "a"."Id" = "a_Items"."TestId"
		WHERE
			"Test3697Item"."Id" = "a_Items"."Id"
	)
RETURNING
	"Test3697Item"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

UPDATE
	"Test3697Item"
SET
	"Value" = 1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Test3697" "a"
				INNER JOIN "Test3697Item" "b" ON "a"."Id" = "b"."TestId"
		WHERE
			"Test3697Item"."Id" = "b"."Id"
	)
RETURNING
	"Test3697Item"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Test3697Item')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Test3697Item"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Test3697Item')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Test3697Item"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3697Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Test3697Item"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Test3697')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Test3697"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Test3697')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Test3697"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3697')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Test3697"';
END

