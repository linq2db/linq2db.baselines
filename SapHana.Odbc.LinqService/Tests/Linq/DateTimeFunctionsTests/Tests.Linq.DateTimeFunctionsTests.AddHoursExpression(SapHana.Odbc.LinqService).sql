BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int32
SET     @p = 22

SELECT
	Hour(Add_Seconds("t"."DateTimeValue", ? * 3600))
FROM
	"LinqDataTypes" "t"

