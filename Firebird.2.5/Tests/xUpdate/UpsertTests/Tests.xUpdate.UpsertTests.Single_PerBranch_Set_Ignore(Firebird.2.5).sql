-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'first'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @updateTime TimeStamp -- DateTime
SET     @updateTime = CAST('2026-01-01 12:00:00' AS timestamp)
DECLARE @insertTime TimeStamp -- DateTime
SET     @insertTime = CAST('2026-01-01 10:00:00' AS timestamp)

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
		"UpdatedAt" = CAST(@updateTime AS TimeStamp),
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
		CAST(@Name AS VARCHAR(5)),
		CAST(@Version AS Int),
		CAST(@insertTime AS TimeStamp),
		'system'
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
DECLARE @Name VarChar(6) -- String
SET     @Name = 'second'
DECLARE @Version Integer -- Int32
SET     @Version = 2
DECLARE @updateTime TimeStamp -- DateTime
SET     @updateTime = CAST('2026-01-01 12:00:00' AS timestamp)
DECLARE @insertTime TimeStamp -- DateTime
SET     @insertTime = CAST('2026-01-01 10:00:00' AS timestamp)

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
		"UpdatedAt" = CAST(@updateTime AS TimeStamp),
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
		CAST(@Name AS VARCHAR(6)),
		CAST(@Version AS Int),
		CAST(@insertTime AS TimeStamp),
		'system'
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

