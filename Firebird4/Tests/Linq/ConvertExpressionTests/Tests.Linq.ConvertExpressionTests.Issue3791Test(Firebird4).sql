BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue3791Table')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Issue3791Table"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue3791Table')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Issue3791Table"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3791Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3791Table"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3791Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3791Table"
			(
				"Id"      Int                                     NOT NULL,
				"OtherId" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Issue3791Table" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue3791Table')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Issue3791Table"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue3791Table')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Issue3791Table" FOR "Issue3791Table"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Issue3791Table", 1);
			END
		';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3791GuidTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3791GuidTable"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3791GuidTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3791GuidTable"
			(
				"Id" CHAR(16) CHARACTER SET OCTETS NOT NULL,

				CONSTRAINT "PK_Issue3791GuidTable" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t2"."Id",
	"t2"."OtherId",
	"t1"."Id"
FROM
	"Issue3791Table" "t2"
		LEFT JOIN (
			SELECT
				"a_Association"."Id",
				UUID_TO_CHAR("a_Association"."Id") as "c1"
			FROM
				"Issue3791GuidTable" "a_Association"
		) "t1" ON ("t2"."OtherId" = "t1"."c1" OR "t2"."OtherId" IS NULL AND "t1"."c1" IS NULL)

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3791GuidTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3791GuidTable"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue3791Table')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Issue3791Table"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue3791Table')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Issue3791Table"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3791Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3791Table"';
END

