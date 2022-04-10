BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_2  -- Int32
SET     @p_2 = -3

SELECT
	Add_Months("t"."DateTimeValue", ?)
FROM
	"LinqDataTypes" "t"

