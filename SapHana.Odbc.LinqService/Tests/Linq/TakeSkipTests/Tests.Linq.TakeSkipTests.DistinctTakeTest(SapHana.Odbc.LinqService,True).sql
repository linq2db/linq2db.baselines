BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
LIMIT ?

