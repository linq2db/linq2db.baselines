BeforeExecute
-- Firebird3 Firebird
DECLARE @part1 SmallInt -- Int16
SET     @part1 = 4
DECLARE @part2 Integer -- Int32
SET     @part2 = 4

SELECT
	CAST(DateAdd(Month, (("t"."SmallIntValue" + @part1) - @part2) * 3, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

