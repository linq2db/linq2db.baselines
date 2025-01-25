BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int32
SET     @p = -1

SELECT
	To_Date(Add_Months("t"."DateTimeValue", ? * 3))
FROM
	"LinqDataTypes" "t"

