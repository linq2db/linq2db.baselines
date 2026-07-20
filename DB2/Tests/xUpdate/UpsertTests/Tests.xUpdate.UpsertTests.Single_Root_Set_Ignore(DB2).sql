-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'root-ins'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 1
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified Timestamp(20) -- DateTime
SET     @modified = '2026-02-02-09.00.00.000000'
DECLARE @UpdatedBy VarChar(12) -- String
SET     @UpdatedBy = 'sys-root-ins'
DECLARE @Name_1 VarChar(8) -- String
SET     @Name_1 = 'root-ins'
DECLARE @Version_1 Integer(4) -- Int32
SET     @Version_1 = 1
DECLARE @CreatedAt_1 Timestamp -- DateTime
SET     @CreatedAt_1 = NULL
DECLARE @modified_1 Timestamp(20) -- DateTime
SET     @modified_1 = '2026-02-02-09.00.00.000000'
DECLARE @UpdatedBy_1 VarChar(12) -- String
SET     @UpdatedBy_1 = 'sys-root-ins'

MERGE INTO "UpsertTest" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = CAST(@Name AS NVarChar(8)),
		"Version" = CAST(@Version AS Int),
		"CreatedAt" = CAST(@CreatedAt AS timestamp),
		"UpdatedAt" = CAST(@modified AS timestamp),
		"UpdatedBy" = CAST(@UpdatedBy AS NVarChar(12))
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Name",
		"Version",
		"CreatedAt",
		"UpdatedAt",
		"UpdatedBy"
	)
	VALUES
	(
		CAST(@Id AS Int),
		CAST(@Name_1 AS NVarChar(8)),
		CAST(@Version_1 AS Int),
		CAST(@CreatedAt_1 AS timestamp),
		CAST(@modified_1 AS timestamp),
		CAST(@UpdatedBy_1 AS NVarChar(12))
	)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."Version",
	"t1"."CreatedAt",
	"t1"."CreatedBy",
	"t1"."UpdatedAt",
	"t1"."UpdatedBy"
FROM
	"UpsertTest" "t1"
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'root-upd'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 2
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified Timestamp(20) -- DateTime
SET     @modified = '2026-02-02-09.00.00.000000'
DECLARE @UpdatedBy VarChar(12) -- String
SET     @UpdatedBy = 'sys-root-upd'
DECLARE @Name_1 VarChar(8) -- String
SET     @Name_1 = 'root-upd'
DECLARE @Version_1 Integer(4) -- Int32
SET     @Version_1 = 2
DECLARE @CreatedAt_1 Timestamp -- DateTime
SET     @CreatedAt_1 = NULL
DECLARE @modified_1 Timestamp(20) -- DateTime
SET     @modified_1 = '2026-02-02-09.00.00.000000'
DECLARE @UpdatedBy_1 VarChar(12) -- String
SET     @UpdatedBy_1 = 'sys-root-upd'

MERGE INTO "UpsertTest" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = CAST(@Name AS NVarChar(8)),
		"Version" = CAST(@Version AS Int),
		"CreatedAt" = CAST(@CreatedAt AS timestamp),
		"UpdatedAt" = CAST(@modified AS timestamp),
		"UpdatedBy" = CAST(@UpdatedBy AS NVarChar(12))
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Name",
		"Version",
		"CreatedAt",
		"UpdatedAt",
		"UpdatedBy"
	)
	VALUES
	(
		CAST(@Id AS Int),
		CAST(@Name_1 AS NVarChar(8)),
		CAST(@Version_1 AS Int),
		CAST(@CreatedAt_1 AS timestamp),
		CAST(@modified_1 AS timestamp),
		CAST(@UpdatedBy_1 AS NVarChar(12))
	)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."Version",
	"t1"."CreatedAt",
	"t1"."CreatedBy",
	"t1"."UpdatedAt",
	"t1"."UpdatedBy"
FROM
	"UpsertTest" "t1"
FETCH NEXT 2 ROWS ONLY

