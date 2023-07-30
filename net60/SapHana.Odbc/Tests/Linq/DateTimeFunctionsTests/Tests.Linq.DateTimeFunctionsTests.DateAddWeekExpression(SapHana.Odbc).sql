BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = -7

SELECT
	Add_Days("t"."DateTimeValue", ?)
FROM
	"LinqDataTypes" "t"

