-- SapHana.Native SapHana
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'ts-ins'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedAt TimeStamp -- DateTime2
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt TimeStamp -- DateTime2
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"UpsertTest" "t1"
SET
	"Name" = :"Name",
	"Version" = :"Version",
	"CreatedAt" = :"CreatedAt",
	"CreatedBy" = :"CreatedBy",
	"UpdatedAt" = :"UpdatedAt",
	"UpdatedBy" = :"UpdatedBy"
WHERE
	"t1"."Id" = :"Id"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'ts-ins'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt TimeStamp -- DateTime2
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
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
	:"Id",
	:"Name",
	:"Version",
	CURRENT_TIMESTAMP,
	:"CreatedBy",
	:"UpdatedAt",
	:"UpdatedBy"
)

-- SapHana.Native SapHana
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
LIMIT 2

-- SapHana.Native SapHana
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'ts-upd'
DECLARE @Version Integer -- Int32
SET     @Version = 2
DECLARE @CreatedAt TimeStamp -- DateTime2
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"UpsertTest" "t1"
SET
	"Name" = :"Name",
	"Version" = :"Version",
	"CreatedAt" = :"CreatedAt",
	"CreatedBy" = :"CreatedBy",
	"UpdatedAt" = CURRENT_TIMESTAMP,
	"UpdatedBy" = :"UpdatedBy"
WHERE
	"t1"."Id" = :"Id"

-- SapHana.Native SapHana
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
LIMIT 2

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'root-ts'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt TimeStamp -- DateTime2
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL

UPSERT "UpsertTest"
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
	:"Id",
	:"Name",
	:"Version",
	CURRENT_TIMESTAMP,
	:"CreatedBy",
	:"UpdatedAt",
	:"UpdatedBy"
)
WITH PRIMARY KEY

-- SapHana.Native SapHana
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
LIMIT 2

