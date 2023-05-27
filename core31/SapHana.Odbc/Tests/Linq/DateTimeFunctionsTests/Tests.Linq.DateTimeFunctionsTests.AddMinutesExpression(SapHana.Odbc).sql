BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_1  -- Int32
SET     @p_1 = -480

SELECT
	Add_Seconds("t"."DateTimeValue", ?)
FROM
	"LinqDataTypes" "t"

