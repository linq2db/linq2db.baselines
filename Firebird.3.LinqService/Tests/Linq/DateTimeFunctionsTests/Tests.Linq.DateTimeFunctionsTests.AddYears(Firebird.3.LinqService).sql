﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CAST(DateAdd(Year, 1, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

