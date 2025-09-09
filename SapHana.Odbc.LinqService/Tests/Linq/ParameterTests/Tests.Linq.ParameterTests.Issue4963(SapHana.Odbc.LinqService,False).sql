BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @offset Int -- Int32
SET     @offset = -1

UPDATE
	"Issue4963Table" "t1"
SET
	"Field" = CAST(CAST("t1"."Field" AS Integer) + ? AS TinyInt)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Field"
FROM
	"Issue4963Table" "t1"
LIMIT 2

