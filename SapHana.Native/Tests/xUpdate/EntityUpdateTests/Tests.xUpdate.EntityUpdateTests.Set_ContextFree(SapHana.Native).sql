-- SapHana.Native SapHana
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'x'
DECLARE @Version Integer -- Int32
SET     @Version = 5
DECLARE @stamp TimeStamp -- DateTime2
SET     @stamp = TIMESTAMP '2026-06-01 00:00:00.0000000'
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"EntityUpdateTest" "t"
SET
	"Name" = :"Name",
	"Version" = :"Version",
	"UpdatedAt" = :"stamp",
	"UpdatedBy" = :"UpdatedBy"
WHERE
	"t"."Id" = :"Id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."Version",
	"t1"."UpdatedAt",
	"t1"."UpdatedBy"
FROM
	"EntityUpdateTest" "t1"
LIMIT 2

