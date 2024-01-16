BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = 79200

SELECT
	Hour(Add_Seconds("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

