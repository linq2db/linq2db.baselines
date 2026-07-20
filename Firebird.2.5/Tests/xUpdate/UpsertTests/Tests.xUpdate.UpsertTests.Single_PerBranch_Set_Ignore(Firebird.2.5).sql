-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'first'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @updateTime TimeStamp -- DateTime
SET     @updateTime = TIMESTAMP '2026-01-01 12:00:00.0000'
DECLARE @Name_1 VarChar(5) -- String
SET     @Name_1 = 'first'
DECLARE @Version_1 Integer -- Int32
SET     @Version_1 = 1
DECLARE @insertTime TimeStamp -- DateTime
SET     @insertTime = TIMESTAMP '2026-01-01 10:00:00.0000'

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
		CAST(@Name_1 AS VARCHAR(5)),
		CAST(@Version_1 AS Int),
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
SET     @updateTime = TIMESTAMP '2026-01-01 12:00:00.0000'
DECLARE @Name_1 VarChar(6) -- String
SET     @Name_1 = 'second'
DECLARE @Version_1 Integer -- Int32
SET     @Version_1 = 2
DECLARE @insertTime TimeStamp -- DateTime
SET     @insertTime = TIMESTAMP '2026-01-01 10:00:00.0000'

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
		CAST(@Name_1 AS VARCHAR(6)),
		CAST(@Version_1 AS Int),
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

