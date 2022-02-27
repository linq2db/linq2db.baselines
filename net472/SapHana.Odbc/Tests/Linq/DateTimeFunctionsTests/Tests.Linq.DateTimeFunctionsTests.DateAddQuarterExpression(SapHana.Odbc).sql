BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p1  -- Int32
SET     @p1 = -1

SELECT
	Add_Months("t"."DateTimeValue", ? * 3)
FROM
	"LinqDataTypes" "t"

