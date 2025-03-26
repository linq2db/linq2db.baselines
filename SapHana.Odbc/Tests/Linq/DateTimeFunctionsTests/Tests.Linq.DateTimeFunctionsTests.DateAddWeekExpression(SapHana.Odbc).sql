BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value Int -- Int32
SET     @Value = -1

SELECT
	To_Date(Add_Days("t"."DateTimeValue", ? * 7))
FROM
	"LinqDataTypes" "t"

