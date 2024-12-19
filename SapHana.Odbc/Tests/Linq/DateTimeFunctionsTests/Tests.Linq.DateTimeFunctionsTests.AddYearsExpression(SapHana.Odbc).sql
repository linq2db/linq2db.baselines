BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Date  -- Int32
SET     @Date = 1

SELECT
	To_Date(Add_Years("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

