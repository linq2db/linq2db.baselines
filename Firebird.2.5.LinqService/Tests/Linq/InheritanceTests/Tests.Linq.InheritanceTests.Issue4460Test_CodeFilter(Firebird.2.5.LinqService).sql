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
				"Code" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Age"  Int
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

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Name"
)
VALUES
(
	@Code,
	@Id,
	@Name
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Code VarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Age Integer -- Int32
SET     @Age = 10

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Age"
)
VALUES
(
	@Code,
	@Id,
	@Age
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CASE
		WHEN "e"."Code" = 'Child2' THEN '1'
		ELSE '0'
	END,
	"e"."Code",
	"e"."Id",
	"e"."Age",
	CASE
		WHEN "e"."Code" = 'Child' THEN '1'
		ELSE '0'
	END,
	"e"."Name"
FROM
	"Base" "e"
WHERE
	"e"."Code" <> 'Child' OR "e"."Code" IS NULL

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Base')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Base"';
END

