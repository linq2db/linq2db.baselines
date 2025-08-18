BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

UPDATE
	"Issue4963Table" "t1"
SET
	"Field" = CAST(CAST("t1"."Field" AS Integer) + -1 AS TinyInt)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Field"
FROM
	"Issue4963Table" "t1"
LIMIT 2

