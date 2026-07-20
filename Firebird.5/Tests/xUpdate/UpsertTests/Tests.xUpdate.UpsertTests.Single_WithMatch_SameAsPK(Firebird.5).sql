-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(2) -- String
SET     @Name = 'm1'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedAt TimeStamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt TimeStamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Name_1 VarChar(2) -- String
SET     @Name_1 = 'm1'
DECLARE @Version_1 Integer -- Int32
SET     @Version_1 = 1
DECLARE @CreatedAt_1 TimeStamp -- DateTime
SET     @CreatedAt_1 = NULL
DECLARE @CreatedBy_1 VarChar -- String
SET     @CreatedBy_1 = NULL
DECLARE @UpdatedAt_1 TimeStamp -- DateTime
SET     @UpdatedAt_1 = NULL
DECLARE @UpdatedBy_1 VarChar -- String
SET     @UpdatedBy_1 = NULL

MERGE INTO "UpsertTest" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = CAST(@Name AS VARCHAR(2)),
		"Version" = CAST(@Version AS Int),
		"CreatedAt" = CAST(@CreatedAt AS TimeStamp),
		"CreatedBy" = CAST(@CreatedBy AS VARCHAR(1)),
		"UpdatedAt" = CAST(@UpdatedAt AS TimeStamp),
		"UpdatedBy" = CAST(@UpdatedBy AS VARCHAR(1))
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
		CAST(@Name_1 AS VARCHAR(2)),
		CAST(@Version_1 AS Int),
		CAST(@CreatedAt_1 AS TimeStamp),
		CAST(@CreatedBy_1 AS VARCHAR(1)),
		CAST(@UpdatedAt_1 AS TimeStamp),
		CAST(@UpdatedBy_1 AS VARCHAR(1))
	)

-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(2) -- String
SET     @Name = 'm2'
DECLARE @Version Integer -- Int32
SET     @Version = 2
DECLARE @CreatedAt TimeStamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt TimeStamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Name_1 VarChar(2) -- String
SET     @Name_1 = 'm2'
DECLARE @Version_1 Integer -- Int32
SET     @Version_1 = 2
DECLARE @CreatedAt_1 TimeStamp -- DateTime
SET     @CreatedAt_1 = NULL
DECLARE @CreatedBy_1 VarChar -- String
SET     @CreatedBy_1 = NULL
DECLARE @UpdatedAt_1 TimeStamp -- DateTime
SET     @UpdatedAt_1 = NULL
DECLARE @UpdatedBy_1 VarChar -- String
SET     @UpdatedBy_1 = NULL

MERGE INTO "UpsertTest" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = CAST(@Name AS VARCHAR(2)),
		"Version" = CAST(@Version AS Int),
		"CreatedAt" = CAST(@CreatedAt AS TimeStamp),
		"CreatedBy" = CAST(@CreatedBy AS VARCHAR(1)),
		"UpdatedAt" = CAST(@UpdatedAt AS TimeStamp),
		"UpdatedBy" = CAST(@UpdatedBy AS VARCHAR(1))
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
		CAST(@Name_1 AS VARCHAR(2)),
		CAST(@Version_1 AS Int),
		CAST(@CreatedAt_1 AS TimeStamp),
		CAST(@CreatedBy_1 AS VARCHAR(1)),
		CAST(@UpdatedAt_1 AS TimeStamp),
		CAST(@UpdatedBy_1 AS VARCHAR(1))
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

