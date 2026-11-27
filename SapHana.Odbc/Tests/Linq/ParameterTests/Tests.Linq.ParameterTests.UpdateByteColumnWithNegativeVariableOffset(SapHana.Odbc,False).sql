-- SapHana.Odbc SapHanaOdbc
DECLARE @offset Int -- Int32
SET     @offset = -1

UPDATE
	"ByteFieldUpdateTable" "t1"
SET
	"Field" = CAST(CAST("t1"."Field" AS Integer) + ? AS TinyInt)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"ByteFieldUpdateTable" "t1"
LIMIT 2

