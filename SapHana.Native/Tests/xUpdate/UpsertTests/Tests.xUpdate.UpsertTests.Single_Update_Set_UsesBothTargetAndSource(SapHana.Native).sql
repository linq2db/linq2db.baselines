-- SapHana.Native SapHana
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'inc'
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

UPDATE
	"UpsertTest" "t1"
SET
	"Name" = :"Name",
	"Version" = "t1"."Version" + :"Version",
	"CreatedAt" = :"CreatedAt",
	"CreatedBy" = :"CreatedBy",
	"UpdatedAt" = :"UpdatedAt",
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

