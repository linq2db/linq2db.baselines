-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 2
DECLARE @Name_1 VarChar(4) -- String
SET     @Name_1 = 'John'
DECLARE @Age_1 Integer(4) -- Int32
SET     @Age_1 = 2

MERGE INTO "PR_1598_Insert_Table_Cache" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = CAST(@Name AS NVarChar(4)),
		"Age" = CAST(@Age AS Int)
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Name",
		"Age"
	)
	VALUES
	(
		CAST(@Id AS Int),
		CAST(@Name_1 AS NVarChar(4)),
		CAST(@Age_1 AS Int)
	)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Insert_Table_Cache" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 2
DECLARE @Name_1 VarChar(4) -- String
SET     @Name_1 = 'John'
DECLARE @Age_1 Integer(4) -- Int32
SET     @Age_1 = 2

MERGE INTO "PR_1598_Insert_Table_Cache" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = CAST(@Name AS NVarChar(4)),
		"Age" = CAST(@Age AS Int)
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Name",
		"Age"
	)
	VALUES
	(
		CAST(@Id AS Int),
		CAST(@Name_1 AS NVarChar(4)),
		CAST(@Age_1 AS Int)
	)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Insert_Table_Cache" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT 1 ROWS ONLY

