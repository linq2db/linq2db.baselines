-- SapHana.Native SapHana
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'row'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedAt TimeStamp -- DateTime2
SET     @CreatedAt = NULL
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
	"CreatedBy" = 'second-root',
	"UpdatedAt" = :"UpdatedAt",
	"UpdatedBy" = :"UpdatedBy"
WHERE
	"t1"."Id" = :"Id"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'row'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedAt TimeStamp -- DateTime2
SET     @CreatedAt = NULL
DECLARE @UpdatedAt TimeStamp -- DateTime2
SET     @UpdatedAt = NULL

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
	:"CreatedAt",
	'second-root',
	:"UpdatedAt",
	'second-branch'
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

