BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Second Int -- Int32
SET     @Second = -35

SELECT
	Second(Add_Seconds("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

