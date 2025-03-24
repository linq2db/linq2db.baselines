BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Date Int -- Int32
SET     @Date = 5

SELECT
	To_Date(Add_Days("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

