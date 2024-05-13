BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = 22

SELECT
	Hour(Add_Seconds("t"."DateTimeValue", ? * 3600))
FROM
	"LinqDataTypes" "t"

