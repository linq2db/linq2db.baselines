-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'root-ins'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedAt TimeStamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified TimeStamp -- DateTime
SET     @modified = TIMESTAMP '2026-02-02 09:00:00.0000'
DECLARE @UpdatedBy VarChar(12) -- String
SET     @UpdatedBy = 'sys-root-ins'
DECLARE @Name_1 VarChar(8) -- String
SET     @Name_1 = 'root-ins'
DECLARE @Version_1 Integer -- Int32
SET     @Version_1 = 1
DECLARE @CreatedAt_1 TimeStamp -- DateTime
SET     @CreatedAt_1 = NULL
DECLARE @modified_1 TimeStamp -- DateTime
SET     @modified_1 = TIMESTAMP '2026-02-02 09:00:00.0000'
DECLARE @UpdatedBy_1 VarChar(12) -- String
SET     @UpdatedBy_1 = 'sys-root-ins'

MERGE INTO "UpsertTest" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = CAST(@Name AS VARCHAR(8)),
		"Version" = CAST(@Version AS Int),
		"CreatedAt" = CAST(@CreatedAt AS TimeStamp),
		"UpdatedAt" = CAST(@modified AS TimeStamp),
		"UpdatedBy" = CAST(@UpdatedBy AS VARCHAR(12))
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
		CAST(@Name_1 AS VARCHAR(8)),
		CAST(@Version_1 AS Int),
		CAST(@CreatedAt_1 AS TimeStamp),
		CAST(@modified_1 AS TimeStamp),
		CAST(@UpdatedBy_1 AS VARCHAR(12))
	)

-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'root-upd'
DECLARE @Version Integer -- Int32
SET     @Version = 2
DECLARE @CreatedAt TimeStamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified TimeStamp -- DateTime
SET     @modified = TIMESTAMP '2026-02-02 09:00:00.0000'
DECLARE @UpdatedBy VarChar(12) -- String
SET     @UpdatedBy = 'sys-root-upd'
DECLARE @Name_1 VarChar(8) -- String
SET     @Name_1 = 'root-upd'
DECLARE @Version_1 Integer -- Int32
SET     @Version_1 = 2
DECLARE @CreatedAt_1 TimeStamp -- DateTime
SET     @CreatedAt_1 = NULL
DECLARE @modified_1 TimeStamp -- DateTime
SET     @modified_1 = TIMESTAMP '2026-02-02 09:00:00.0000'
DECLARE @UpdatedBy_1 VarChar(12) -- String
SET     @UpdatedBy_1 = 'sys-root-upd'

MERGE INTO "UpsertTest" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = CAST(@Name AS VARCHAR(8)),
		"Version" = CAST(@Version AS Int),
		"CreatedAt" = CAST(@CreatedAt AS TimeStamp),
		"UpdatedAt" = CAST(@modified AS TimeStamp),
		"UpdatedBy" = CAST(@UpdatedBy AS VARCHAR(12))
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
		CAST(@Name_1 AS VARCHAR(8)),
		CAST(@Version_1 AS Int),
		CAST(@CreatedAt_1 AS TimeStamp),
		CAST(@modified_1 AS TimeStamp),
		CAST(@UpdatedBy_1 AS VARCHAR(12))
	)

-- Firebird.4 Firebird4
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

