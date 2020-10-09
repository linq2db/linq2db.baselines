BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "PR_1598_Insert_Table_Cache"
(
	"Id"   Int           NOT NULL,
	"Name" NVarChar(255)     NULL,
	"Age"  Int               NULL,

	CONSTRAINT "PK_PR_1598_Insert_Table_Cache" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 2

MERGE INTO "PR_1598_Insert_Table_Cache" "t1"
USING (SELECT @Id AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Name" = @Name,
		"t1"."Age" = @Age
WHEN NOT MATCHED THEN
	INSERT
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
	"PR_1598_Insert_Table_Cache" "t"
WHERE
	"t"."Id" = 1
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 2

MERGE INTO "PR_1598_Insert_Table_Cache" "t1"
USING (SELECT @Id AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Name" = @Name,
		"t1"."Age" = @Age
WHEN NOT MATCHED THEN
	INSERT
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
	"PR_1598_Insert_Table_Cache" "t"
WHERE
	"t"."Id" = 1
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "PR_1598_Insert_Table_Cache"

