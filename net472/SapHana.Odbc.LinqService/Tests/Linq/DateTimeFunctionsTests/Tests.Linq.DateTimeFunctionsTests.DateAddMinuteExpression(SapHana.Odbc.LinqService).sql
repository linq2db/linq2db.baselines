BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p1  -- Int32
SET     @p1 = 5

SELECT
	Add_Seconds("t"."DateTimeValue", ? * 60)
FROM
	"LinqDataTypes" "t"

