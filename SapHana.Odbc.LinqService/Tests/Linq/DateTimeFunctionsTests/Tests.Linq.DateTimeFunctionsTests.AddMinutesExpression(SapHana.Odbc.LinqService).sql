BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = -8

SELECT
	Minute(Add_Seconds("t"."DateTimeValue", ? * 60))
FROM
	"LinqDataTypes" "t"

