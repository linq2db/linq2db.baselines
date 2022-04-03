BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_1  -- Int32
SET     @p_1 = 300

SELECT
	Add_Seconds("t"."DateTimeValue", ?)
FROM
	"LinqDataTypes" "t"

