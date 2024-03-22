BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = 300

SELECT
	Minute(Add_Seconds("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

