-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1

SELECT
	1
FROM
	"UpsertTest" "t1"
WHERE
	"t1"."Id" = :"Id"

-- SapHana.Native SapHana
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'stale'
DECLARE @Version Integer -- Int32
SET     @Version = 3
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
DECLARE @Version_1 Integer -- Int32
SET     @Version_1 = 3

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
	"t1"."Id" = :"Id" AND :"Version_1" > "t1"."Version"

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
SET     @Id = 1

SELECT
	1
FROM
	"UpsertTest" "t1"
WHERE
	"t1"."Id" = :"Id"

-- SapHana.Native SapHana
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'fresh'
DECLARE @Version Integer -- Int32
SET     @Version = 10
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
DECLARE @Version_1 Integer -- Int32
SET     @Version_1 = 10

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
	"t1"."Id" = :"Id" AND :"Version_1" > "t1"."Version"

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

