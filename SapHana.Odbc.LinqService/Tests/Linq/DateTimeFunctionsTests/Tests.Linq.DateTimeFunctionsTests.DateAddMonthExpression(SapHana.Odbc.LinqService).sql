BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value Int -- Int32
SET     @Value = 2

SELECT
	To_Date(Add_Months("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

