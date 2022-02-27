BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p1  -- Int32
SET     @p1 = 2

SELECT
	Add_Months("t"."DateTimeValue", ?)
FROM
	"LinqDataTypes" "t"

