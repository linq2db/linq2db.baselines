BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PR_1598_Update_Null_Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PR_1598_Update_Null_Table"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PR_1598_Update_Null_Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "PR_1598_Update_Null_Table"
			(
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Age"  Int,

				CONSTRAINT "PK_PR_1598_Update_Null_Table" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Tommy'
DECLARE @Age Integer -- Int32
SET     @Age = NULL

INSERT INTO "PR_1598_Update_Null_Table"
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
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Null_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird4 Firebird
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Integer -- Int32
SET     @Age = 2
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Null_Table"
SET
	"PR_1598_Update_Null_Table"."Name" = @Name,
	"PR_1598_Update_Null_Table"."Age" = @Age
WHERE
	"PR_1598_Update_Null_Table"."Id" = @Id

BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Null_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird4 Firebird
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Null_Table"
SET
	"PR_1598_Update_Null_Table"."Name" = @Name
WHERE
	"PR_1598_Update_Null_Table"."Id" = @Id

BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Null_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PR_1598_Update_Null_Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PR_1598_Update_Null_Table"';
END

