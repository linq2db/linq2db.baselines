BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Date Int -- Int32
SET     @Date = -2

SELECT
	To_Date(Add_Months("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

