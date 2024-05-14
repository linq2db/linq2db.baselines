BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int32
SET     @p = -8

SELECT
	Minute(Add_Seconds("t"."DateTimeValue", ? * 60))
FROM
	"LinqDataTypes" "t"

