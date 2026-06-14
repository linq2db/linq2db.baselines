-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(1) -- String
SET     @Name = 'a'
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
		"Name" = CAST(@Name AS VARCHAR(1)),
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
		CAST(@Name AS VARCHAR(1)),
		CAST(@Version AS Int),
		CAST(@CreatedAt AS TimeStamp),
		CAST(@CreatedBy AS VARCHAR(1)),
		CAST(@UpdatedAt AS TimeStamp),
		CAST(@UpdatedBy AS VARCHAR(1))
	)

-- Firebird.2.5 Firebird

SELECT FIRST 2
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

-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(1) -- String
SET     @Name = 'b'
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

MERGE INTO "UpsertTest" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = CAST(@Name AS VARCHAR(1)),
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
		CAST(@Name AS VARCHAR(1)),
		CAST(@Version AS Int),
		CAST(@CreatedAt AS TimeStamp),
		CAST(@CreatedBy AS VARCHAR(1)),
		CAST(@UpdatedAt AS TimeStamp),
		CAST(@UpdatedBy AS VARCHAR(1))
	)

-- Firebird.2.5 Firebird

SELECT FIRST 2
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

