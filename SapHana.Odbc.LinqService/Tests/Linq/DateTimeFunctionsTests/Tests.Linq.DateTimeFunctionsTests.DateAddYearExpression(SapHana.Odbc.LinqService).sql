BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = 11

SELECT
	To_Date(Add_Years("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

