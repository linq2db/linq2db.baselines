-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Version Integer(4) -- Int32
SET     @Version = 3
DECLARE @Name VarChar(5) -- String
SET     @Name = 'stale'
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt Timestamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL

MERGE INTO "UpsertTest" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED AND CAST(@Version AS Int) > "t1"."Version" THEN
	UPDATE 
	SET
		"Name" = CAST(@Name AS NVarChar(5)),
		"Version" = CAST(@Version AS Int),
		"CreatedAt" = CAST(@CreatedAt AS timestamp),
		"CreatedBy" = CAST(@CreatedBy AS NVarChar(255)),
		"UpdatedAt" = CAST(@UpdatedAt AS timestamp),
		"UpdatedBy" = CAST(@UpdatedBy AS NVarChar(255))
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Name",
		"Version",
		"CreatedAt",
		"CreatedBy",
		"UpdatedAt",
		"UpdatedBy"
	)
	VALUES
	(
		CAST(@Id AS Int),
		CAST(@Name AS NVarChar(5)),
		CAST(@Version AS Int),
		CAST(@CreatedAt AS timestamp),
		CAST(@CreatedBy AS NVarChar(255)),
		CAST(@UpdatedAt AS timestamp),
		CAST(@UpdatedBy AS NVarChar(255))
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
DECLARE @Version Integer(4) -- Int32
SET     @Version = 10
DECLARE @Name VarChar(5) -- String
SET     @Name = 'fresh'
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt Timestamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL

MERGE INTO "UpsertTest" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED AND CAST(@Version AS Int) > "t1"."Version" THEN
	UPDATE 
	SET
		"Name" = CAST(@Name AS NVarChar(5)),
		"Version" = CAST(@Version AS Int),
		"CreatedAt" = CAST(@CreatedAt AS timestamp),
		"CreatedBy" = CAST(@CreatedBy AS NVarChar(255)),
		"UpdatedAt" = CAST(@UpdatedAt AS timestamp),
		"UpdatedBy" = CAST(@UpdatedBy AS NVarChar(255))
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Name",
		"Version",
		"CreatedAt",
		"CreatedBy",
		"UpdatedAt",
		"UpdatedBy"
	)
	VALUES
	(
		CAST(@Id AS Int),
		CAST(@Name AS NVarChar(5)),
		CAST(@Version AS Int),
		CAST(@CreatedAt AS timestamp),
		CAST(@CreatedBy AS NVarChar(255)),
		CAST(@UpdatedAt AS timestamp),
		CAST(@UpdatedBy AS NVarChar(255))
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

