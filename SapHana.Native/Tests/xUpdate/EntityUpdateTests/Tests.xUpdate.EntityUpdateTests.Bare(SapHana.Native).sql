-- SapHana.Native SapHana
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'updated'
DECLARE @Version Integer -- Int32
SET     @Version = 2
DECLARE @UpdatedAt TimeStamp -- DateTime2
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"EntityUpdateTest" "t"
SET
	"Name" = :"Name",
	"Version" = :"Version",
	"UpdatedAt" = :"UpdatedAt",
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

