BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "PR_1598_Update_Null_Table"
(
	"Id"   Int           NOT NULL,
	"Name" NVarChar(255)     NULL,
	"Age"  Int               NULL,

	CONSTRAINT "PK_PR_1598_Update_Null_Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t"."Id", 
	"t"."Name", 
	"t"."Age"
FROM
	"PR_1598_Update_Null_Table" "t"
WHERE
	"t"."Id" = 1
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 2
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Null_Table"
SET
	"PR_1598_Update_Null_Table"."Name" = @Name,
	"PR_1598_Update_Null_Table"."Age" = @Age
WHERE
	"PR_1598_Update_Null_Table"."Id" = @Id

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t"."Id", 
	"t"."Name", 
	"t"."Age"
FROM
	"PR_1598_Update_Null_Table" "t"
WHERE
	"t"."Id" = 1
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Null_Table"
SET
	"PR_1598_Update_Null_Table"."Name" = @Name
WHERE
	"PR_1598_Update_Null_Table"."Id" = @Id

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t"."Id", 
	"t"."Name", 
	"t"."Age"
FROM
	"PR_1598_Update_Null_Table" "t"
WHERE
	"t"."Id" = 1
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "PR_1598_Update_Null_Table"

