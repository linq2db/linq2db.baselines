BeforeExecute
-- SapHana.Native SapHana
DECLARE @part1  -- Int32
SET     @part1 = 4
DECLARE @part2  -- Int32
SET     @part2 = 4

SELECT
	Add_Months("t"."DateTimeValue", ("t"."SmallIntValue" + :"part1") - :"part2")
FROM
	"LinqDataTypes" "t"

