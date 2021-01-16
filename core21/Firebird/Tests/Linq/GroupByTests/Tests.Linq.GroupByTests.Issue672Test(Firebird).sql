BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT '
		CREATE TABLE "Stone"
		(
			"Id"           Int                                     NOT NULL,
			"Name"         VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,
			"Enabled"      CHAR,
			"ImageFullUrl" VarChar(255) CHARACTER SET UNICODE_FSS,

			CONSTRAINT "PK_Stone" PRIMARY KEY ("Id")
		)
	';
	EXECUTE STATEMENT '
		CREATE GENERATOR "GIDENTITY_Stone"
	';
	EXECUTE STATEMENT '
		CREATE TRIGGER "TIDENTITY_Stone" FOR "Stone"
		BEFORE INSERT POSITION 0
		AS BEGIN
			NEW."Id" = GEN_ID("GIDENTITY_Stone", 1);
		END
	';
END

BeforeExecute
-- Firebird
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Char(1) -- String
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
-- Firebird
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Char(1) -- String
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
-- Firebird
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group2'
DECLARE @Enabled Char(1) -- String
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
-- Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Stone"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Stone"';
	EXECUTE STATEMENT 'DROP TABLE "Stone"';
END

