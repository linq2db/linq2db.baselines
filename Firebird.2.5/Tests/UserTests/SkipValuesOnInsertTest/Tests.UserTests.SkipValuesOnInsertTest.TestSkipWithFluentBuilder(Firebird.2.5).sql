BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PR_1598_Insert_Fluent_Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PR_1598_Insert_Fluent_Table"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PR_1598_Insert_Fluent_Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "PR_1598_Insert_Fluent_Table"
			(
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Age"  Int,

				CONSTRAINT "PK_PR_1598_Insert_Fluent_Table" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar -- String
SET     @Name = NULL

INSERT INTO "PR_1598_Insert_Fluent_Table"
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
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Insert_Fluent_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PR_1598_Insert_Fluent_Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PR_1598_Insert_Fluent_Table"';
END

