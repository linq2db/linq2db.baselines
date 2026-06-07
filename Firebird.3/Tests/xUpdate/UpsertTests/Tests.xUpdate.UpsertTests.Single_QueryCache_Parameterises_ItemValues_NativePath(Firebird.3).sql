-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'first'
DECLARE @Version Integer -- Int32
SET     @Version = 10
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
		"Name" = CAST(@Name AS VARCHAR(5)),
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
		CAST(@Name AS VARCHAR(5)),
		CAST(@Version AS Int),
		CAST(@CreatedAt AS TimeStamp),
		CAST(@CreatedBy AS VARCHAR(1)),
		CAST(@UpdatedAt AS TimeStamp),
		CAST(@UpdatedBy AS VARCHAR(1))
	)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarChar(6) -- String
SET     @Name = 'second'
DECLARE @Version Integer -- Int32
SET     @Version = 20
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
		CAST(@CreatedAt AS TimeStamp),
		CAST(@CreatedBy AS VARCHAR(1)),
		CAST(@UpdatedAt AS TimeStamp),
		CAST(@UpdatedBy AS VARCHAR(1))
	)

-- Firebird.3 Firebird3

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
ORDER BY
	"t1"."Id"

