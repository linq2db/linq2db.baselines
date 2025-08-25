BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = -1

SELECT
	To_Date(Add_Months("t"."DateTimeValue", ? * 3))
FROM
	"LinqDataTypes" "t"

