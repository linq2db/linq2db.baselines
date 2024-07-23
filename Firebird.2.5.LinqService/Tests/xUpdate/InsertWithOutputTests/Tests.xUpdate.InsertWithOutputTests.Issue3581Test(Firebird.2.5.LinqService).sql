BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3581Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3581Table"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3581Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3581Table"
			(
				"Id"         Int                                    NOT NULL,
				"Name"       VarChar(255) CHARACTER SET UNICODE_FSS,
				"ExternalId" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Source"     VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Issue3581Table" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'John Doe'
DECLARE @Id_1 VarChar(1) -- String
SET     @Id_1 = '1'
DECLARE @Source VarChar(7) -- String
SET     @Source = 'unknown'

INSERT INTO "Issue3581Table"
(
	"Id",
	"Name",
	"ExternalId",
	"Source"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Name AS VARCHAR(8)),
	CAST(@Id_1 AS VARCHAR(1)),
	CAST(@Source AS VARCHAR(7))
)
RETURNING
	"Issue3581Table"."Id",
	"Issue3581Table"."Name",
	"Issue3581Table"."ExternalId",
	"Issue3581Table"."Source"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3581Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3581Table"';
END

