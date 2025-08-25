BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 3

SELECT
	To_Date(Add_Days("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

