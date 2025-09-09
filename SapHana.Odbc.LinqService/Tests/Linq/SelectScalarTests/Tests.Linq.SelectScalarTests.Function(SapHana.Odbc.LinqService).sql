BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @text NVarChar(3) -- String
SET     @text = '123'

SELECT
	CAST("c_1"."ChildID" AS NVarChar(11)) || ',' || Coalesce(?, '')
FROM
	"Child" "c_1"
LIMIT 1

