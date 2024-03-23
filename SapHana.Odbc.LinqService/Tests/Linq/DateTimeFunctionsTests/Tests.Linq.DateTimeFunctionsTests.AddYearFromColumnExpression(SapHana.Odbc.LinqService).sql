BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @part1  -- Int16
SET     @part1 = 4
DECLARE @part2  -- Int32
SET     @part2 = 4

SELECT
	Cast(Add_Years("t"."DateTimeValue", (Cast("t"."SmallIntValue" as Integer) + ?) - ?) as Date)
FROM
	"LinqDataTypes" "t"

