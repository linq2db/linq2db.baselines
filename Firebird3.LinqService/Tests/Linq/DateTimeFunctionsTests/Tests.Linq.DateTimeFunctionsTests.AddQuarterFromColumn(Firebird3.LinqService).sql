﻿BeforeExecute
-- Firebird3 Firebird

SELECT
	CAST(DateAdd(Month, "t"."SmallIntValue" * 3, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

