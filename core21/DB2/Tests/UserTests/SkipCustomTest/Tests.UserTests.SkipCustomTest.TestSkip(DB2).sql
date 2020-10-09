BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "PR_1598_SkipCustom_Table"
(
	"Id"   Int           NOT NULL,
	"Name" NVarChar(255)     NULL,
	"Age"  Int               NULL,

	CONSTRAINT "PK_PR_1598_SkipCustom_Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t"."Id", 
	"t"."Name", 
	"t"."Age"
FROM
	"PR_1598_SkipCustom_Table" "t"
WHERE
	"t"."Id" = 1
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t"."Id", 
	"t"."Name", 
	"t"."Age"
FROM
	"PR_1598_SkipCustom_Table" "t"
WHERE
	"t"."Id" = 2
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "PR_1598_SkipCustom_Table"

