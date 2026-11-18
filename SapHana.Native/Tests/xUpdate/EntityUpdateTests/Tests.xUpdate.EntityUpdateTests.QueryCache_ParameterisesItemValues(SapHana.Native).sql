-- SapHana.Native SapHana
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'new1'
DECLARE @Version Integer -- Int32
SET     @Version = 5
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
	"Version" = "t"."Version" + :"Version",
	"UpdatedAt" = :"UpdatedAt",
	"UpdatedBy" = :"UpdatedBy"
WHERE
	"t"."Id" = :"Id"

-- SapHana.Native SapHana
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'new2'
DECLARE @Version Integer -- Int32
SET     @Version = 10
DECLARE @UpdatedAt TimeStamp -- DateTime2
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 2

UPDATE
	"EntityUpdateTest" "t"
SET
	"Name" = :"Name",
	"Version" = "t"."Version" + :"Version",
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
ORDER BY
	"t1"."Id"

