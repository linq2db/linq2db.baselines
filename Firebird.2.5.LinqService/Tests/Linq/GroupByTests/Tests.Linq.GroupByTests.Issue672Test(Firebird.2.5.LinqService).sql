BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Stone')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Stone"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Stone')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Stone"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Stone')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Stone"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Stone')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Stone"
			(
				"Id"           Int                                     NOT NULL,
				"Name"         VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,
				"Enabled"      CHAR(1),
				"ImageFullUrl" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Stone" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Stone')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Stone"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Stone')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Stone" FOR "Stone"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Stone", 1);
			END
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Char -- String
SET     @Enabled = '1'
DECLARE @ImageFullUrl VarChar(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO "Stone"
(
	"Name",
	"Enabled",
	"ImageFullUrl"
)
VALUES
(
	@Name,
	@Enabled,
	@ImageFullUrl
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Char -- String
SET     @Enabled = '1'
DECLARE @ImageFullUrl VarChar(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO "Stone"
(
	"Name",
	"Enabled",
	"ImageFullUrl"
)
VALUES
(
	@Name,
	@Enabled,
	@ImageFullUrl
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group2'
DECLARE @Enabled Char -- String
SET     @Enabled = '1'
DECLARE @ImageFullUrl VarChar(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO "Stone"
(
	"Name",
	"Enabled",
	"ImageFullUrl"
)
VALUES
(
	@Name,
	@Enabled,
	@ImageFullUrl
)

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Stone')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Stone"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Stone')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Stone"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Stone')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Stone"';
END

