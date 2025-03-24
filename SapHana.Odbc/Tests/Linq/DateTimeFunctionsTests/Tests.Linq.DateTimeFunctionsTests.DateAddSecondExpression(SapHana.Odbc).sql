BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @Value  -- Int32
SET     @Value = 41

SELECT
	Second(Add_Seconds("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

