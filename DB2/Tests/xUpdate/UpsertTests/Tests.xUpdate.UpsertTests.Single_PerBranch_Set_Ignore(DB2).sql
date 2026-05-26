-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'first'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 1
DECLARE @updateTime Timestamp(20) -- DateTime
SET     @updateTime = '2026-01-01-12.00.00.000000'
DECLARE @insertTime Timestamp(20) -- DateTime
SET     @insertTime = '2026-01-01-10.00.00.000000'

MERGE INTO "UpsertTest" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = CAST(@Name AS NVarChar(5)),
		"Version" = CAST(@Version AS Int),
		"UpdatedAt" = CAST(@updateTime AS timestamp),
		"UpdatedBy" = 'system'
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Name",
		"Version",
		"CreatedAt",
		"CreatedBy"
	)
	VALUES
	(
		CAST(@Id AS Int),
		CAST(@Name AS NVarChar(5)),
		CAST(@Version AS Int),
		CAST(@insertTime AS timestamp),
		'system'
	)

-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."Id",
	"r"."Name",
	"r"."Version",
	"r"."CreatedAt",
	"r"."CreatedBy",
	"r"."UpdatedAt",
	"r"."UpdatedBy"
FROM
	"UpsertTest" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(6) -- String
SET     @Name = 'second'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 2
DECLARE @updateTime Timestamp(20) -- DateTime
SET     @updateTime = '2026-01-01-12.00.00.000000'
DECLARE @insertTime Timestamp(20) -- DateTime
SET     @insertTime = '2026-01-01-10.00.00.000000'

MERGE INTO "UpsertTest" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = CAST(@Name AS NVarChar(6)),
		"Version" = CAST(@Version AS Int),
		"UpdatedAt" = CAST(@updateTime AS timestamp),
		"UpdatedBy" = 'system'
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Name",
		"Version",
		"CreatedAt",
		"CreatedBy"
	)
	VALUES
	(
		CAST(@Id AS Int),
		CAST(@Name AS NVarChar(6)),
		CAST(@Version AS Int),
		CAST(@insertTime AS timestamp),
		'system'
	)

-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."Id",
	"r"."Name",
	"r"."Version",
	"r"."CreatedAt",
	"r"."CreatedBy",
	"r"."UpdatedAt",
	"r"."UpdatedBy"
FROM
	"UpsertTest" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

