BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p1  -- Int32
SET     @p1 = 11

SELECT
	Add_Years("t"."DateTimeValue", ?)
FROM
	"LinqDataTypes" "t"

