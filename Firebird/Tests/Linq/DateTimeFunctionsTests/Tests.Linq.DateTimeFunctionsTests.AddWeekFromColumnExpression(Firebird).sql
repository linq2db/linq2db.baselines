BeforeExecute
-- Firebird
DECLARE @part1 Integer -- Int32
SET     @part1 = 4
DECLARE @part2 Integer -- Int32
SET     @part2 = 4

SELECT
	DateAdd(Day, (("t"."SmallIntValue" + Cast(@part1 as Int)) - Cast(@part2 as Int)) * 7, "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

