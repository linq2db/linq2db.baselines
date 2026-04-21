-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'root-ins'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedAt TimeStamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified TimeStamp -- DateTime
SET     @modified = CAST('2026-02-02 09:00:00' AS timestamp)
DECLARE @UpdatedBy VarChar(12) -- String
SET     @UpdatedBy = 'sys-root-ins'

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
		CAST(@Name AS VARCHAR(8)),
		CAST(@Version AS Int),
		CAST(@CreatedAt AS TimeStamp),
		CAST(@modified AS TimeStamp),
		CAST(@UpdatedBy AS VARCHAR(12))
	)

-- Firebird.5 Firebird4

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

-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'root-upd'
DECLARE @Version Integer -- Int32
SET     @Version = 2
DECLARE @CreatedAt TimeStamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified TimeStamp -- DateTime
SET     @modified = CAST('2026-02-02 09:00:00' AS timestamp)
DECLARE @UpdatedBy VarChar(12) -- String
SET     @UpdatedBy = 'sys-root-upd'

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
		CAST(@Name AS VARCHAR(8)),
		CAST(@Version AS Int),
		CAST(@CreatedAt AS TimeStamp),
		CAST(@modified AS TimeStamp),
		CAST(@UpdatedBy AS VARCHAR(12))
	)

-- Firebird.5 Firebird4

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

