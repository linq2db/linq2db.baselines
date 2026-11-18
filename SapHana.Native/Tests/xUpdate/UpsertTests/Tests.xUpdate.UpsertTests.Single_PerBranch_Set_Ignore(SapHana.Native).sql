-- SapHana.Native SapHana
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'first'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @updateTime TimeStamp -- DateTime2
SET     @updateTime = TIMESTAMP '2026-01-01 12:00:00.0000000'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"UpsertTest" "t1"
SET
	"Name" = :"Name",
	"Version" = :"Version",
	"UpdatedAt" = :"updateTime",
	"UpdatedBy" = 'system'
WHERE
	"t1"."Id" = :"Id"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'first'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @insertTime TimeStamp -- DateTime2
SET     @insertTime = TIMESTAMP '2026-01-01 10:00:00.0000000'

INSERT INTO "UpsertTest"
(
	"Id",
	"Name",
	"Version",
	"CreatedAt",
	"CreatedBy"
)
VALUES
(
	:"Id",
	:"Name",
	:"Version",
	:"insertTime",
	'system'
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
SET     @Name = 'second'
DECLARE @Version Integer -- Int32
SET     @Version = 2
DECLARE @updateTime TimeStamp -- DateTime2
SET     @updateTime = TIMESTAMP '2026-01-01 12:00:00.0000000'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"UpsertTest" "t1"
SET
	"Name" = :"Name",
	"Version" = :"Version",
	"UpdatedAt" = :"updateTime",
	"UpdatedBy" = 'system'
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

