﻿BeforeExecute
-- Firebird

SELECT
	Cast(Floor(Extract(weekday from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

