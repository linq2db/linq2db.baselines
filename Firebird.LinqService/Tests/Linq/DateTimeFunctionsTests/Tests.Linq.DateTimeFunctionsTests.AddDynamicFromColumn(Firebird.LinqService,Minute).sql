﻿BeforeExecute
-- Firebird

SELECT
	DateAdd(Minute, "t"."SmallIntValue", "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

