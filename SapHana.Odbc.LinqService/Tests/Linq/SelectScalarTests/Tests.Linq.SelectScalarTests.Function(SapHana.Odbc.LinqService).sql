BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @text NVarChar(3) -- String
SET     @text = '123'

SELECT
	"c_1"."ChildID" || ',' || ?
FROM
	"Child" "c_1"
LIMIT 1

