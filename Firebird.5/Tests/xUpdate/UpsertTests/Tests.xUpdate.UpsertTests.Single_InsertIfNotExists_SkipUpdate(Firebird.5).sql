-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'replaced'
DECLARE @Version Integer -- Int32
SET     @Version = 99
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
		CAST(@Name AS VARCHAR(8)),
		CAST(@Version AS Int),
		CAST(@CreatedAt AS TimeStamp),
		CAST(@CreatedBy AS VARCHAR(1)),
		CAST(@UpdatedAt AS TimeStamp),
		CAST(@UpdatedBy AS VARCHAR(1))
	)

-- Firebird.5 Firebird4

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

-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarChar(5) -- String
SET     @Name = 'fresh'
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

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"UpsertTest" "t1"

-- Firebird.5 Firebird4

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

