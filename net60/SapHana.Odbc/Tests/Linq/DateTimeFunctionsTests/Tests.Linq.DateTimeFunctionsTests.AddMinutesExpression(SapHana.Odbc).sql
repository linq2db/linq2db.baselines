BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_2  -- Int32
SET     @p_2 = -480

SELECT
	Add_Seconds("t"."DateTimeValue", ?)
FROM
	"LinqDataTypes" "t"

