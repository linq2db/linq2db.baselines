﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @part1 SmallInt -- Int16
SET     @part1 = 4
DECLARE @part2 Int -- Int32
SET     @part2 = 4

SELECT
	Add_Seconds("t"."DateTimeValue", (("t"."SmallIntValue" + ?) - ?) * 60)
FROM
	"LinqDataTypes" "t"

