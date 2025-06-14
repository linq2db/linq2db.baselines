BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @part1 Integer(4) -- Int32
SET     @part1 = 4
DECLARE @part2 Integer(4) -- Int32
SET     @part2 = 4

SELECT
	"t"."DateTimeValue" + (("t"."SmallIntValue" + @part1) - @part2) MONTH
FROM
	"LinqDataTypes" "t"

