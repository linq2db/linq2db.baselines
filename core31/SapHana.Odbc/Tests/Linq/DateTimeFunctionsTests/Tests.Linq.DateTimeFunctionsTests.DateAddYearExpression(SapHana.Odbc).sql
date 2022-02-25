BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_1  -- Int32
SET     @p_1 = 11

SELECT
	Add_Years("t"."DateTimeValue", ?)
FROM
	"LinqDataTypes" "t"

