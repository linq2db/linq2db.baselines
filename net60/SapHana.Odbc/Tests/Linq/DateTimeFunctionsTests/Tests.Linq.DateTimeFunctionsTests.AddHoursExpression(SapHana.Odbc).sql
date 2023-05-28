BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_1  -- Int32
SET     @p_1 = 79200

SELECT
	Hour(Add_Seconds("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

