-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'first'
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
	:"CreatedAt",
	:"CreatedBy",
	:"UpdatedAt",
	:"UpdatedBy"
)
WITH PRIMARY KEY

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'second'
DECLARE @Version Integer -- Int32
SET     @Version = 20
DECLARE @CreatedAt TimeStamp -- DateTime2
SET     @CreatedAt = NULL
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
	:"CreatedAt",
	:"CreatedBy",
	:"UpdatedAt",
	:"UpdatedBy"
)
WITH PRIMARY KEY

-- SapHana.Native SapHana
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

