BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "PR_1598_Insert_Enum_Table"
(
	"Id"     Int                                    NOT NULL,
	"Name"   VarChar(255) CHARACTER SET UNICODE_FSS,
	"Age"    Int,
	"Gender" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_PR_1598_Insert_Enum_Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(3) -- String
SET     @Name = 'Max'
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Gender VarChar(4) -- String
SET     @Gender = 'Male'

INSERT INTO "PR_1598_Insert_Enum_Table"
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
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t"."Id",
	"t"."Name",
	"t"."Age",
	"t"."Gender"
FROM
	"PR_1598_Insert_Enum_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Jenny'
DECLARE @Age Integer -- Int32
SET     @Age = 25

INSERT INTO "PR_1598_Insert_Enum_Table"
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
	"t"."Age",
	"t"."Gender"
FROM
	"PR_1598_Insert_Enum_Table" "t"
WHERE
	"t"."Id" = 2

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "PR_1598_Insert_Enum_Table"

