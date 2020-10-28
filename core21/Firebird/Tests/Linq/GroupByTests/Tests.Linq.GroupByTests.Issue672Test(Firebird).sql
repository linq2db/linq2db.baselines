BeforeExecute
-- Firebird

CREATE TABLE "Stone"
(
	"Id"           Int                                     NOT NULL,
	"Name"         VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,
	"Enabled"      CHAR,
	"ImageFullUrl" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_Stone" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

CREATE GENERATOR "GIDENTITY_Stone"

BeforeExecute
-- Firebird

CREATE TRIGGER "TIDENTITY_Stone" FOR "Stone"
BEFORE INSERT POSITION 0
AS BEGIN
	NEW."Id" = GEN_ID("GIDENTITY_Stone", 1);
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

SELECT
	"s"."Name"
FROM
	"Stone" "s"
WHERE
	("s"."Enabled" = 1 AND "s"."Enabled" IS NOT NULL) AND
	"s"."Name" NOT STARTING WITH 'level - ' AND Char_Length("s"."ImageFullUrl") > 0
GROUP BY
	"s"."Name"

BeforeExecute
-- Firebird
DECLARE @Name_1 VarChar(6) -- String
SET     @Name_1 = 'group1'

SELECT
	"s"."Id",
	"s"."Name",
	"s"."Enabled",
	"s"."ImageFullUrl"
FROM
	"Stone" "s"
WHERE
	("s"."Enabled" = 1 AND "s"."Enabled" IS NOT NULL) AND
	"s"."Name" NOT STARTING WITH 'level - ' AND
	Char_Length("s"."ImageFullUrl") > 0 AND
	"s"."Name" = @Name_1

BeforeExecute
-- Firebird
DECLARE @Name_1 VarChar(6) -- String
SET     @Name_1 = 'group2'

SELECT
	"s"."Id",
	"s"."Name",
	"s"."Enabled",
	"s"."ImageFullUrl"
FROM
	"Stone" "s"
WHERE
	("s"."Enabled" = 1 AND "s"."Enabled" IS NOT NULL) AND
	"s"."Name" NOT STARTING WITH 'level - ' AND
	Char_Length("s"."ImageFullUrl") > 0 AND
	"s"."Name" = @Name_1

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Stone"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Stone"';
	EXECUTE STATEMENT 'DROP TABLE "Stone"';
END

