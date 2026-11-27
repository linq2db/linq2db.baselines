-- SapHana.Native SapHana
UPDATE
	"ByteFieldUpdateTable" "t1"
SET
	"Field" = CAST(CAST("t1"."Field" AS Integer) + -1 AS TinyInt)

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"ByteFieldUpdateTable" "t1"
LIMIT 2

