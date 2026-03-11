-- SapHana.Odbc SapHanaOdbc
DECLARE @Hour Int -- Int32
SET     @Hour = 22

SELECT
	Hour(Add_Seconds("t"."DateTimeValue", ? * 3600))
FROM
	"LinqDataTypes" "t"

