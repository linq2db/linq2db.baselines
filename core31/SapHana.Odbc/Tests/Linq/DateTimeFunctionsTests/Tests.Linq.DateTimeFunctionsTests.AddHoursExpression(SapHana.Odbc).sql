BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_2  -- Int32
SET     @p_2 = 79200

SELECT
	Hour(Add_Seconds("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

