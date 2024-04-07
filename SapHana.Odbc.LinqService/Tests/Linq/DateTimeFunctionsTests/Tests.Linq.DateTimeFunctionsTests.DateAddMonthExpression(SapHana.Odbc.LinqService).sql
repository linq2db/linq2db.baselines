BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = 2

SELECT
	To_Date(Add_Months("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

