﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @part1 SmallInt(4) -- Int16
SET     @part1 = 4
DECLARE @part2 Integer(4) -- Int32
SET     @part2 = 4

SELECT
	DATE("t"."DateTimeValue" + (("t"."SmallIntValue" + CAST(@part1 AS SmallInt)) - CAST(@part2 AS Int)) YEAR)
FROM
	"LinqDataTypes" "t"

