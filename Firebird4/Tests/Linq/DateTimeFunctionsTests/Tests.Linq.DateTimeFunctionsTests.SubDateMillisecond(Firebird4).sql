﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	DateDiff(millisecond, "t"."DateTimeValue", DateAdd(Millisecond, 2023456789, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

