-- SapHana.Odbc SapHanaOdbc
DECLARE @part1 Int -- Int32
SET     @part1 = 4
DECLARE @part2 Int -- Int32
SET     @part2 = 4

SELECT
	To_Date(Add_Months("t"."DateTimeValue", (("t"."SmallIntValue" + ?) - ?) * 3))
FROM
	"LinqDataTypes" "t"

