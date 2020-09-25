BeforeExecute
-- Firebird

CREATE TABLE "PR_1598_Update_Enum_Table"
(
	"Id"     Int                                    NOT NULL,
	"Name"   VarChar(255) CHARACTER SET UNICODE_FSS,
	"Age"    Int,
	"Gender" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_PR_1598_Update_Enum_Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(3) -- String
SET     @Name = 'Max'
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Gender VarChar(6) -- String
SET     @Gender = 'Female'

INSERT INTO "PR_1598_Update_Enum_Table"
(
	"Id",
	"Name",
	"Age",
	"Gender"
)
VALUES
(
	@Id,
	@Name,
	@Age,
	@Gender
)

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t"."Id",
	"t"."Name",
	"t"."Age",
	"t"."Gender"
FROM
	"PR_1598_Update_Enum_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Integer -- Int32
SET     @Age = 2
DECLARE @Gender VarChar(4) -- String
SET     @Gender = 'Male'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Enum_Table"
SET
	"PR_1598_Update_Enum_Table"."Name" = @Name,
	"PR_1598_Update_Enum_Table"."Age" = @Age,
	"PR_1598_Update_Enum_Table"."Gender" = @Gender
WHERE
	"PR_1598_Update_Enum_Table"."Id" = @Id

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t"."Id",
	"t"."Name",
	"t"."Age",
	"t"."Gender"
FROM
	"PR_1598_Update_Enum_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Francine'
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Enum_Table"
SET
	"PR_1598_Update_Enum_Table"."Name" = @Name,
	"PR_1598_Update_Enum_Table"."Age" = @Age
WHERE
	"PR_1598_Update_Enum_Table"."Id" = @Id

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t"."Id",
	"t"."Name",
	"t"."Age",
	"t"."Gender"
FROM
	"PR_1598_Update_Enum_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird

DROP TABLE "PR_1598_Update_Enum_Table"

