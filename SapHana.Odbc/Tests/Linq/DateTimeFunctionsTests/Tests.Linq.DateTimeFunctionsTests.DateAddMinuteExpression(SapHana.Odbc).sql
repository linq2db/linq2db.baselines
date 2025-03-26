BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value Int -- Int32
SET     @Value = 5

SELECT
	Minute(Add_Seconds("t"."DateTimeValue", ? * 60))
FROM
	"LinqDataTypes" "t"

