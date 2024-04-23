BeforeExecute
-- Firebird.5 Firebird4
DECLARE @part1 SmallInt -- Int16
SET     @part1 = 4
DECLARE @part2 Integer -- Int32
SET     @part2 = 4

SELECT
	DateAdd(Second, ("t"."SmallIntValue" + CAST(@part1 AS SmallInt)) - CAST(@part2 AS Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

