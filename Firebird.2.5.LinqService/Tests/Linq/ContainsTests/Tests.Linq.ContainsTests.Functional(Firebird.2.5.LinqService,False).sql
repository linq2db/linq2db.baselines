BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Src"
			(
				"Id"    Int                                   NOT NULL,
				"Int"   Int,
				"Enum"  VarChar(5) CHARACTER SET UNICODE_FSS,
				"CEnum" VarChar(20) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Int Integer -- Int32
SET     @Int = NULL
DECLARE @Enum VarChar -- String
SET     @Enum = NULL
DECLARE @CEnum VarChar -- String
SET     @CEnum = NULL

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
)
VALUES
(
	@Id,
	@Int,
	@Enum,
	@CEnum
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Int Integer -- Int32
SET     @Int = 2
DECLARE @Enum VarChar(3) -- String
SET     @Enum = 'TWO'
DECLARE @CEnum VarChar(12) -- String
SET     @CEnum = '___Value2___'

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
)
VALUES
(
	@Id,
	@Int,
	@Enum,
	@CEnum
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" IN (-1, -2)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" IN (-1, NULL)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" IN (-1, 2)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" NOT IN (NULL, 2)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" NOT IN (-1, 2)

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

