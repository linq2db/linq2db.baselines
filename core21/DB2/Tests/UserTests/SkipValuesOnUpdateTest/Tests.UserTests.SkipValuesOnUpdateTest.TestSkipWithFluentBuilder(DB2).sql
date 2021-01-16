BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "PR_1598_Update_Fluent_Table"
(
	"Id"   Int           NOT NULL,
	"Name" NVarChar(255)     NULL,
	"Age"  Int               NULL,

	CONSTRAINT "PK_PR_1598_Update_Fluent_Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar -- String
SET     @Name = NULL
DECLARE @Age Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 18
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Fluent_Table"
SET
	"PR_1598_Update_Fluent_Table"."Name" = @Name,
	"PR_1598_Update_Fluent_Table"."Age" = @Age
WHERE
	"PR_1598_Update_Fluent_Table"."Id" = @Id

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Fluent_Table"
SET
	"PR_1598_Update_Fluent_Table"."Name" = @Name
WHERE
	"PR_1598_Update_Fluent_Table"."Id" = @Id

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "PR_1598_Update_Fluent_Table"

