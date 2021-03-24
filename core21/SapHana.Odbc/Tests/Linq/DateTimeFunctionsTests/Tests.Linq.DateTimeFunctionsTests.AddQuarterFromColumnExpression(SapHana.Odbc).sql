BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @part1  -- Int32
SET     @part1 = 4
DECLARE @part2  -- Int32
SET     @part2 = 4

SELECT
	Add_Months("t"."DateTimeValue", Cast((("t"."SmallIntValue" + ?) - ?) as Double) * 3)
FROM
	"LinqDataTypes" "t"

