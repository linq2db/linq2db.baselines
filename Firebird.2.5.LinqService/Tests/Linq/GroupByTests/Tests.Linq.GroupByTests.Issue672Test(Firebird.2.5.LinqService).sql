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

SELECT
	"m_1"."Name",
	"d"."Id",
	"d"."Name",
	"d"."Enabled",
	"d"."ImageFullUrl"
FROM
	(
		SELECT DISTINCT
			"s"."Name"
		FROM
			"Stone" "s"
		WHERE
			"s"."Enabled" = '1' AND "s"."Name" NOT STARTING WITH 'level - ' AND
			Char_Length("s"."ImageFullUrl") > 0
	) "m_1"
		INNER JOIN "Stone" "d" ON "m_1"."Name" = "d"."Name"
WHERE
	"d"."Enabled" = '1' AND "d"."Name" NOT STARTING WITH 'level - ' AND
	Char_Length("d"."ImageFullUrl") > 0

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"sG"."Name"
FROM
	"Stone" "sG"
WHERE
	"sG"."Enabled" = '1' AND "sG"."Name" NOT STARTING WITH 'level - ' AND
	Char_Length("sG"."ImageFullUrl") > 0
GROUP BY
	"sG"."Name"

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

