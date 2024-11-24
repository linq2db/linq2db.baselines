BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Books')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Books"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Books')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Books"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Books')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Books"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Books')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Books"
			(
				"Id"       Int                                     NOT NULL,
				"Title"    VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,
				"AuthorId" Int                                     NOT NULL,

				CONSTRAINT "PK_Books" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Books')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Books"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Books')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Books" FOR "Books"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Books", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Authors')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Authors"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Authors')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Authors"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Authors')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Authors"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Authors')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Authors"
			(
				"Id"   Int                                     NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,

				CONSTRAINT "PK_Authors" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Authors')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Authors"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Authors')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Authors" FOR "Authors"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Authors", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

WITH "BooksCte" ("AuthorId", "Title")
AS
(
	SELECT
		"t1"."AuthorId",
		"t1"."Title"
	FROM
		"Books" "t1"
)
SELECT
	"b"."Title"
FROM
	"BooksCte" "b"
		INNER JOIN "Authors" "a_Author" ON "b"."AuthorId" = "a_Author"."Id"
WHERE
	"a_Author"."Name" = 'Steven'

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Authors')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Authors"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Authors')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Authors"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Authors')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Authors"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Books')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Books"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Books')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Books"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Books')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Books"';
END

