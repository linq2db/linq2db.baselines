﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CAST(DateAdd(Day, (("t"."SmallIntValue" + 4) - 4) * 7, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

