BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p1  -- Int32
SET     @p1 = 3

SELECT
	Add_Days("t"."DateTimeValue", ?)
FROM
	"LinqDataTypes" "t"

