-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(3) -- String
SET     @Name = 'inc'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 3
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt Timestamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Name_1 VarChar(3) -- String
SET     @Name_1 = 'inc'
DECLARE @Version_1 Integer(4) -- Int32
SET     @Version_1 = 3
DECLARE @CreatedAt_1 Timestamp -- DateTime
SET     @CreatedAt_1 = NULL
DECLARE @CreatedBy_1 VarChar -- String
SET     @CreatedBy_1 = NULL
DECLARE @UpdatedAt_1 Timestamp -- DateTime
SET     @UpdatedAt_1 = NULL
DECLARE @UpdatedBy_1 VarChar -- String
SET     @UpdatedBy_1 = NULL

MERGE INTO "UpsertTest" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = CAST(@Name AS NVarChar(3)),
		"Version" = "t1"."Version" + @Version,
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
		CAST(@Name_1 AS NVarChar(3)),
		CAST(@Version_1 AS Int),
		CAST(@CreatedAt_1 AS timestamp),
		CAST(@CreatedBy_1 AS NVarChar(255)),
		CAST(@UpdatedAt_1 AS timestamp),
		CAST(@UpdatedBy_1 AS NVarChar(255))
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

