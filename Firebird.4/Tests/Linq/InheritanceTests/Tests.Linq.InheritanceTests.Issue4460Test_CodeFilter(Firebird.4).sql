BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Base')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Base"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4

SELECT
	CASE
		WHEN "e"."Code" = 'Child2' THEN TRUE
		ELSE FALSE
	END,
	"e"."Code",
	"e"."Id",
	"e"."Age",
	CASE
		WHEN "e"."Code" = 'Child' THEN TRUE
		ELSE FALSE
	END,
	"e"."Name"
FROM
	"Base" "e"
WHERE
	"e"."Code" <> 'Child' OR "e"."Code" IS NULL

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Base')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Base"';
END

