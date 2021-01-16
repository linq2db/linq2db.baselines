BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "PR_1598_Update_Table"
(
	"Id"   Int           NOT NULL,
	"Name" NVarChar(255)     NULL,
	"Age"  Int               NULL,

	CONSTRAINT "PK_PR_1598_Update_Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Manuel'
DECLARE @Age Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Jacob'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 15
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Table"
SET
	"PR_1598_Update_Table"."Name" = @Name,
	"PR_1598_Update_Table"."Age" = @Age
WHERE
	"PR_1598_Update_Table"."Id" = @Id

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Age Integer(4) -- Int32
SET     @Age = 22
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Table"
SET
	"PR_1598_Update_Table"."Age" = @Age
WHERE
	"PR_1598_Update_Table"."Id" = @Id

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "PR_1598_Update_Table"

