BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p1  -- Int32
SET     @p1 = 1

SELECT
	Add_Seconds("t"."DateTimeValue", ? * 3600)
FROM
	"LinqDataTypes" "t"

