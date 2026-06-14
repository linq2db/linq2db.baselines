-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(6) -- String
SET     @Name = 'ts-ins'
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

MERGE INTO "UpsertTest" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = CAST(@Name AS VARCHAR(6)),
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
		CAST(@Name AS VARCHAR(6)),
		CAST(@Version AS Int),
		CURRENT_TIMESTAMP,
		CAST(@CreatedBy AS VARCHAR(1)),
		CAST(@UpdatedAt AS TimeStamp),
		CAST(@UpdatedBy AS VARCHAR(1))
	)

-- Firebird.3 Firebird3

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

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(6) -- String
SET     @Name = 'ts-upd'
DECLARE @Version Integer -- Int32
SET     @Version = 2
DECLARE @CreatedAt TimeStamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @UpdatedAt TimeStamp -- DateTime
SET     @UpdatedAt = NULL

MERGE INTO "UpsertTest" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = CAST(@Name AS VARCHAR(6)),
		"Version" = CAST(@Version AS Int),
		"CreatedAt" = CAST(@CreatedAt AS TimeStamp),
		"CreatedBy" = CAST(@CreatedBy AS VARCHAR(1)),
		"UpdatedAt" = CURRENT_TIMESTAMP,
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
		CAST(@Name AS VARCHAR(6)),
		CAST(@Version AS Int),
		CAST(@CreatedAt AS TimeStamp),
		CAST(@CreatedBy AS VARCHAR(1)),
		CAST(@UpdatedAt AS TimeStamp),
		CAST(@UpdatedBy AS VARCHAR(1))
	)

-- Firebird.3 Firebird3

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

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarChar(7) -- String
SET     @Name = 'root-ts'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt TimeStamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL

MERGE INTO "UpsertTest" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = CAST(@Name AS VARCHAR(7)),
		"Version" = CAST(@Version AS Int),
		"CreatedAt" = CURRENT_TIMESTAMP,
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
		CAST(@Name AS VARCHAR(7)),
		CAST(@Version AS Int),
		CURRENT_TIMESTAMP,
		CAST(@CreatedBy AS VARCHAR(1)),
		CAST(@UpdatedAt AS TimeStamp),
		CAST(@UpdatedBy AS VARCHAR(1))
	)

-- Firebird.3 Firebird3

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
	"r"."Id" = 2
FETCH NEXT 2 ROWS ONLY

