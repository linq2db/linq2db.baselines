﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @part1  -- Int32
SET     @part1 = 4
DECLARE @part2  -- Int32
SET     @part2 = 4

SELECT
	Add_Days("t"."DateTimeValue", Cast((("t"."SmallIntValue" + ?) - ?) as Double) * 7)
FROM
	"LinqDataTypes" "t"

