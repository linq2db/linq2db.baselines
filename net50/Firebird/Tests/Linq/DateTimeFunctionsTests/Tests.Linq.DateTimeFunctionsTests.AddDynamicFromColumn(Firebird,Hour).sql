﻿BeforeExecute
-- Firebird

SELECT
	DateAdd(Hour, "t"."SmallIntValue", "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

