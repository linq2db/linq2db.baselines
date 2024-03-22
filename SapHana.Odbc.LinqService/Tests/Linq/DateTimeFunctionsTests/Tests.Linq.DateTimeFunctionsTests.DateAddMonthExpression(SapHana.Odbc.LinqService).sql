BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = 2

SELECT
	Cast(Add_Months("t"."DateTimeValue", ?) as Date)
FROM
	"LinqDataTypes" "t"

