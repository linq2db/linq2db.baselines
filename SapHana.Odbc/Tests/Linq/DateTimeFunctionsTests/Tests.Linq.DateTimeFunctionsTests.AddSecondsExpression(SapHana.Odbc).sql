BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int32
SET     @p = -35

SELECT
	Second(Add_Seconds("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

