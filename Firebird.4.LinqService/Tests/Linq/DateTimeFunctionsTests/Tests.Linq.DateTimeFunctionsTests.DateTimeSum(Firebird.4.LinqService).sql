﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1".ID,
	Count(*),
	Sum(DateDiff(millisecond, "t1"."DateTimeValue", DateAdd(Day, 1, "t1"."DateTimeValue"))),
	Max(DateDiff(millisecond, "t1"."DateTimeValue", DateAdd(Day, 1, "t1"."DateTimeValue")))
FROM
	"LinqDataTypes" "t1"
GROUP BY
	"t1".ID

