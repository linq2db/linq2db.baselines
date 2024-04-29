BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = 41

SELECT
	Second(Add_Seconds("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

