BeforeExecute
-- Firebird

CREATE TABLE "PR_1598_Update_Table"
(
	"Id"   Int                                    NOT NULL,
	"Name" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Age"  Int,

	CONSTRAINT "PK_PR_1598_Update_Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Manuel'
DECLARE @Age Integer -- Int32
SET     @Age = 14

INSERT INTO "PR_1598_Update_Table"
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
-- Firebird
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Jacob'
DECLARE @Age Integer -- Int32
SET     @Age = 15
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Table"
SET
	"PR_1598_Update_Table"."Name" = @Name,
	"PR_1598_Update_Table"."Age" = @Age
WHERE
	"PR_1598_Update_Table"."Id" = @Id

BeforeExecute
-- Firebird
DECLARE @Age Integer -- Int32
SET     @Age = 22
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Table"
SET
	"PR_1598_Update_Table"."Age" = @Age
WHERE
	"PR_1598_Update_Table"."Id" = @Id

BeforeExecute
-- Firebird

DROP TABLE "PR_1598_Update_Table"

