BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Names')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Names"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Names')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Names"
			(
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Addresses')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Addresses"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Addresses')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Addresses"
			(
				"Id"   Int                                    NOT NULL,
				"Text" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'name1'

INSERT INTO "Names"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarChar(5) -- String
SET     @Name = 'name2'

INSERT INTO "Names"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Text VarChar(7) -- String
SET     @Text = 'address'

INSERT INTO "Addresses"
(
	"Id",
	"Text"
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Text"
FROM
	(
		SELECT DISTINCT
			"Item1"."Id"
		FROM
			"Names" "Item1"
	) "m_1"
		LEFT JOIN "Addresses" "d" ON "m_1"."Id" = "d"."Id"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"tupledArg"."Id",
	"tupledArg"."Name"
FROM
	"Names" "tupledArg"
ORDER BY
	"tupledArg"."Id"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Addresses')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Addresses"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Names')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Names"';
END

