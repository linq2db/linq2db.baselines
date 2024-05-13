BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = -1

SELECT
	To_Date(Add_Months("t"."DateTimeValue", ? * 3))
FROM
	"LinqDataTypes" "t"

