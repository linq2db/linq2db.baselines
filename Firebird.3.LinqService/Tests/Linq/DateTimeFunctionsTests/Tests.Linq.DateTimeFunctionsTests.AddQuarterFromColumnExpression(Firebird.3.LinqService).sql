﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CAST(DateAdd(Month, (("t"."SmallIntValue" + 4) - 4) * 3, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

