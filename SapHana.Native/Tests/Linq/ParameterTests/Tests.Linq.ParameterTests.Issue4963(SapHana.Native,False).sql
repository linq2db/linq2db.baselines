-- SapHana.Native SapHana
DECLARE @offset Integer -- Int32
SET     @offset = -1

UPDATE
	"Issue4963Table" "t1"
SET
	"Field" = CAST(CAST("t1"."Field" AS Integer) + :"offset" AS TinyInt)

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"Issue4963Table" "t1"
LIMIT 2

