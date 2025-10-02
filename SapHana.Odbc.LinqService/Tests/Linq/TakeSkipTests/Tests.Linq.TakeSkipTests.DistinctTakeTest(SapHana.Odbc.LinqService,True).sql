BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT
	"r"."Value"
FROM
	"TakeSkipClass" "r"
LIMIT ?

