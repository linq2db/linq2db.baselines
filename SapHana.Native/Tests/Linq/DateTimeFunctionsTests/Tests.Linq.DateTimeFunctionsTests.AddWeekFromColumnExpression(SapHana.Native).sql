-- SapHana.Native SapHana
DECLARE @part1 Integer -- Int32
SET     @part1 = 4
DECLARE @part2 Integer -- Int32
SET     @part2 = 4

SELECT
	To_Date(Add_Days("t"."DateTimeValue", (("t"."SmallIntValue" + :"part1") - :"part2") * 7))
FROM
	"LinqDataTypes" "t"

