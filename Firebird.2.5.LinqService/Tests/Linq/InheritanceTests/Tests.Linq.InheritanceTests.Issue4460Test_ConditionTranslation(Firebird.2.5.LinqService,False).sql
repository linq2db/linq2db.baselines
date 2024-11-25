BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Base')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Base"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Base')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Base"
			(
				"Code"   VarChar(255) CHARACTER SET UNICODE_FSS,
				"Id"     Int                                    NOT NULL,
				"Name"   VarChar(255) CHARACTER SET UNICODE_FSS,
				"IsMale" CHAR(1),
				"Age"    Int
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Code VarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jane'
DECLARE @IsMale Char -- String
SET     @IsMale = '0'

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Name",
	"IsMale"
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@IsMale
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Code VarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarChar -- String
SET     @Name = NULL
DECLARE @Age Integer -- Int32
SET     @Age = 10

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Name",
	"Age"
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@Age
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"e"."Code",
	"e"."Id",
	"e"."Name",
	"e"."Age",
	"e"."IsMale"
FROM
	"Base" "e"
WHERE
	CASE
		WHEN "e"."Code" = 'BaseChild' OR "e"."Code" = 'Child' OR "e"."Code" = 'Child2'
			THEN CASE
			WHEN "e"."Id" <> 0 THEN '1'
			ELSE '0'
		END
		WHEN "e"."Id" <> 0 THEN '1'
		ELSE '0'
	END = '1'
ORDER BY
	"e"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Base')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Base"';
END

