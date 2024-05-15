BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int32
SET     @p = 11

SELECT
	To_Date(Add_Years("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

