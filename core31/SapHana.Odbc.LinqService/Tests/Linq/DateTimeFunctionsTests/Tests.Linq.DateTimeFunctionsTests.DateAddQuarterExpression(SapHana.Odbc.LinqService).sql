BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_1  -- Int32
SET     @p_1 = -3

SELECT
	Add_Months("t"."DateTimeValue", ?)
FROM
	"LinqDataTypes" "t"

