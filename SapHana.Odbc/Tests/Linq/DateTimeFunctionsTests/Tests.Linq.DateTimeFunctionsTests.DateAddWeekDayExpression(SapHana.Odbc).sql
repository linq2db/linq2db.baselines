BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = 1

SELECT
	Cast(Add_Days("t"."DateTimeValue", ?) as Date)
FROM
	"LinqDataTypes" "t"

