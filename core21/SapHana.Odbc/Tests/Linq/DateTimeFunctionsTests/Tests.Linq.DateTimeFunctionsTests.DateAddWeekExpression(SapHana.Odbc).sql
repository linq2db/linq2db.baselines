BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_2  -- Int32
SET     @p_2 = -7

SELECT
	Add_Days("t"."DateTimeValue", ?)
FROM
	"LinqDataTypes" "t"

