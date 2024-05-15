BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	To_Date(Add_Years("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

