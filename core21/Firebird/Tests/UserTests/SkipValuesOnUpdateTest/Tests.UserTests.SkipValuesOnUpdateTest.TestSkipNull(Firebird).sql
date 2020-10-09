BeforeExecute
-- Firebird

CREATE TABLE "PR_1598_Update_Null_Table"
(
	"Id"   Int                                    NOT NULL,
	"Name" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Age"  Int,

	CONSTRAINT "PK_PR_1598_Update_Null_Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird
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
-- Firebird
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
-- Firebird
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
-- Firebird
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
-- Firebird
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
-- Firebird
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
-- Firebird

DROP TABLE "PR_1598_Update_Null_Table"

