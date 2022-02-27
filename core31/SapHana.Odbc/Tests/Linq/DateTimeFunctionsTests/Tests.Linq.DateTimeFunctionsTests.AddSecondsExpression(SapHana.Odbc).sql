BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p1  -- Int32
SET     @p1 = -35

SELECT
	Add_Seconds("t"."DateTimeValue", ?)
FROM
	"LinqDataTypes" "t"

