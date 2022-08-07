BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PR_1598_Update_Fluent_Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PR_1598_Update_Fluent_Table"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PR_1598_Update_Fluent_Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "PR_1598_Update_Fluent_Table"
			(
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Age"  Int,

				CONSTRAINT "PK_PR_1598_Update_Fluent_Table" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar -- String
SET     @Name = NULL
DECLARE @Age Integer -- Int32
SET     @Age = 2

INSERT INTO "PR_1598_Update_Fluent_Table"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	@Id,
	@Name,
	@Age
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Fluent_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird3 Firebird
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Age Integer -- Int32
SET     @Age = 18
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Fluent_Table"
SET
	"PR_1598_Update_Fluent_Table"."Name" = @Name,
	"PR_1598_Update_Fluent_Table"."Age" = @Age
WHERE
	"PR_1598_Update_Fluent_Table"."Id" = @Id

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Fluent_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird3 Firebird
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Fluent_Table"
SET
	"PR_1598_Update_Fluent_Table"."Name" = @Name
WHERE
	"PR_1598_Update_Fluent_Table"."Id" = @Id

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Fluent_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PR_1598_Update_Fluent_Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PR_1598_Update_Fluent_Table"';
END

