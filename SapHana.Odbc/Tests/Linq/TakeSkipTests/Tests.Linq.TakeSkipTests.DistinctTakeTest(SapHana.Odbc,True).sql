BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT
	"r"."Value"
FROM
	"TakeSkipClass" "r"
LIMIT ?

