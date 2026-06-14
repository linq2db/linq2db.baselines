-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1

SELECT
	1
FROM
	"UpsertTest" "t1"
WHERE
	"t1"."Id" = CAST(@Id AS Int)

-- Firebird.2.5 Firebird
DECLARE @Name VarChar(5) -- String
SET     @Name = 'stale'
DECLARE @Version Integer -- Int32
SET     @Version = 3
DECLARE @CreatedAt TimeStamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt TimeStamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"UpsertTest" "t1"
SET
	"Name" = CAST(@Name AS VARCHAR(5)),
	"Version" = CAST(@Version AS Int),
	"CreatedAt" = CAST(@CreatedAt AS TimeStamp),
	"CreatedBy" = CAST(@CreatedBy AS VARCHAR(1)),
	"UpdatedAt" = CAST(@UpdatedAt AS TimeStamp),
	"UpdatedBy" = CAST(@UpdatedBy AS VARCHAR(1))
WHERE
	"t1"."Id" = CAST(@Id AS Int) AND CAST(@Version AS Int) > "t1"."Version"

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

SELECT
	1
FROM
	"UpsertTest" "t1"
WHERE
	"t1"."Id" = CAST(@Id AS Int)

-- Firebird.2.5 Firebird
DECLARE @Name VarChar(5) -- String
SET     @Name = 'fresh'
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
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"UpsertTest" "t1"
SET
	"Name" = CAST(@Name AS VARCHAR(5)),
	"Version" = CAST(@Version AS Int),
	"CreatedAt" = CAST(@CreatedAt AS TimeStamp),
	"CreatedBy" = CAST(@CreatedBy AS VARCHAR(1)),
	"UpdatedAt" = CAST(@UpdatedAt AS TimeStamp),
	"UpdatedBy" = CAST(@UpdatedBy AS VARCHAR(1))
WHERE
	"t1"."Id" = CAST(@Id AS Int) AND CAST(@Version AS Int) > "t1"."Version"

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

