﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	Cast(Floor(Extract(weekday from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

