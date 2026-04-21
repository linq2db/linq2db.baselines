-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 42
DECLARE @Name VarChar(4) -- String
SET     @Name = 'seed'
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

INSERT INTO "UpsertTest"
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
	@Id,
	@Name,
	@Version,
	@CreatedAt,
	@CreatedBy,
	@UpdatedAt,
	@UpdatedBy
)

-- Firebird.4 Firebird4

MERGE INTO "UpsertTest" "Target"
USING (
	SELECT 42 AS "Id", CAST('first-update' AS VARCHAR(12)) AS "Name", 50 AS "Version_1", CAST(NULL AS TimeStamp) AS "CreatedAt", CAST(NULL AS VARCHAR(1)) AS "CreatedBy", CAST(NULL AS TimeStamp) AS "UpdatedAt", CAST(NULL AS VARCHAR(1)) AS "UpdatedBy" FROM rdb$database) "Source"
(
	"Id",
	"Name",
	"Version_1",
	"CreatedAt",
	"CreatedBy",
	"UpdatedAt",
	"UpdatedBy"
)
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Name" = "Source"."Name",
	"Version" = "Source"."Version_1",
	"CreatedAt" = "Source"."CreatedAt",
	"CreatedBy" = "Source"."CreatedBy",
	"UpdatedAt" = "Source"."UpdatedAt",
	"UpdatedBy" = "Source"."UpdatedBy"

-- Firebird.4 Firebird4

MERGE INTO "UpsertTest" "Target"
USING (
	SELECT 42 AS "Id", CAST('second-update' AS VARCHAR(13)) AS "Name", 99 AS "Version_1", CAST(NULL AS TimeStamp) AS "CreatedAt", CAST(NULL AS VARCHAR(1)) AS "CreatedBy", CAST(NULL AS TimeStamp) AS "UpdatedAt", CAST(NULL AS VARCHAR(1)) AS "UpdatedBy" FROM rdb$database) "Source"
(
	"Id",
	"Name",
	"Version_1",
	"CreatedAt",
	"CreatedBy",
	"UpdatedAt",
	"UpdatedBy"
)
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Name" = "Source"."Name",
	"Version" = "Source"."Version_1",
	"CreatedAt" = "Source"."CreatedAt",
	"CreatedBy" = "Source"."CreatedBy",
	"UpdatedAt" = "Source"."UpdatedAt",
	"UpdatedBy" = "Source"."UpdatedBy"

-- Firebird.4 Firebird4

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
	"r"."Id" = 42
FETCH NEXT 2 ROWS ONLY

