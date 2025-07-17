BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Minute Int -- Int32
SET     @Minute = -8

SELECT
	Minute(Add_Seconds("t"."DateTimeValue", ? * 60))
FROM
	"LinqDataTypes" "t"

