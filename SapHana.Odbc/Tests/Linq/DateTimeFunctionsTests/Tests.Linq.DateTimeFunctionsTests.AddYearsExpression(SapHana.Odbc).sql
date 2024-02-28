BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = 1

SELECT
	Add_Years("t"."DateTimeValue", ?)
FROM
	"LinqDataTypes" "t"

