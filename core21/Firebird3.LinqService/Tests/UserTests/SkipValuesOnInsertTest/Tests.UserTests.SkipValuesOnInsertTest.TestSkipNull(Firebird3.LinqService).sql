BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "PR_1598_Insert_Null_Table"
(
	"Id"   Int                                    NOT NULL,
	"Name" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Age"  Int,

	CONSTRAINT "PK_PR_1598_Insert_Null_Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Tommy'

INSERT INTO "PR_1598_Insert_Null_Table"
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
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take 
	"t"."Id", 
	"t"."Name", 
	"t"."Age"
FROM
	"PR_1598_Insert_Null_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "PR_1598_Insert_Null_Table"

