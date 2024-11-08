BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue4654Customer')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Issue4654Customer"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue4654Customer')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Issue4654Customer"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4654Customer')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4654Customer"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4654Customer')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4654Customer"
			(
				"Id"   Int                                     NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue4654Customer')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Issue4654Customer"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue4654Customer')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Issue4654Customer" FOR "Issue4654Customer"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Issue4654Customer", 1);
			END
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue4654Order')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Issue4654Order"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue4654Order')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Issue4654Order"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4654Order')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4654Order"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4654Order')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4654Order"
			(
				"Id"          Int                                     NOT NULL,
				"ProductName" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Quantity"    Int                                     NOT NULL,
				"CustomerId"  Int                                     NOT NULL
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue4654Order')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Issue4654Order"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue4654Order')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Issue4654Order" FOR "Issue4654Order"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Issue4654Order", 1);
			END
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue4654Product')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Issue4654Product"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue4654Product')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Issue4654Product"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4654Product')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4654Product"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4654Product')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4654Product"
			(
				"Id"    Int                                     NOT NULL,
				"Name"  VarChar(255) CHARACTER SET UNICODE_FSS,
				"Price" Decimal(18, 10)                         NOT NULL
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue4654Product')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Issue4654Product"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue4654Product')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Issue4654Product" FOR "Issue4654Product"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Issue4654Product", 1);
			END
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"c_1"."Id",
	"c_1"."Name"
FROM
	"Issue4654Customer" "c_1"
UNION
SELECT
	"o"."Id",
	"o"."ProductName"
FROM
	"Issue4654Order" "o"
UNION
SELECT
	"p"."Id",
	"p"."Name"
FROM
	"Issue4654Product" "p"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue4654Product')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Issue4654Product"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue4654Product')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Issue4654Product"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4654Product')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4654Product"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue4654Order')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Issue4654Order"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue4654Order')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Issue4654Order"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4654Order')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4654Order"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue4654Customer')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Issue4654Customer"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue4654Customer')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Issue4654Customer"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4654Customer')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4654Customer"';
END

