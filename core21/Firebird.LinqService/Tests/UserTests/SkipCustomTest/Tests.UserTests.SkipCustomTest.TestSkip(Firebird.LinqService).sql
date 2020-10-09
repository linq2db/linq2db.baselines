BeforeExecute
-- Firebird

CREATE TABLE "PR_1598_SkipCustom_Table"
(
	"Id"   Int                                    NOT NULL,
	"Name" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Age"  Int,

	CONSTRAINT "PK_PR_1598_SkipCustom_Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer -- Int32
SET     @Age = 15

INSERT INTO "PR_1598_SkipCustom_Table"
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
	"PR_1598_SkipCustom_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarChar(3) -- String
SET     @Name = 'Max'

INSERT INTO "PR_1598_SkipCustom_Table"
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
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take 
	"t"."Id", 
	"t"."Name", 
	"t"."Age"
FROM
	"PR_1598_SkipCustom_Table" "t"
WHERE
	"t"."Id" = 2

BeforeExecute
-- Firebird

DROP TABLE "PR_1598_SkipCustom_Table"

