BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"
LIMIT ?

