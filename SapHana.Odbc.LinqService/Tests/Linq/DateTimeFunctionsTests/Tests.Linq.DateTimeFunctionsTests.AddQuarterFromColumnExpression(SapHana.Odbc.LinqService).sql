BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @part1  -- Int16
SET     @part1 = 4
DECLARE @part2  -- Int32
SET     @part2 = 4

SELECT
	Cast(Add_Months("t"."DateTimeValue", ((Cast("t"."SmallIntValue" as Integer) + ?) - ?) * 3) as Date)
FROM
	"LinqDataTypes" "t"

