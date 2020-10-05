BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p1  -- Int32
SET     @p1 = -1

SELECT
	Add_Days("t"."DateTimeValue", ? * 7)
FROM
	"LinqDataTypes" "t"

