BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @Second  -- Int32
SET     @Second = -35

SELECT
	Second(Add_Seconds("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

