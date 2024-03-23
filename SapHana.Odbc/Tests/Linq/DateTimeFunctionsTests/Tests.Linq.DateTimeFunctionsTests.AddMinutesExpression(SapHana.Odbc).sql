BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = -480

SELECT
	Minute(Add_Seconds("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

