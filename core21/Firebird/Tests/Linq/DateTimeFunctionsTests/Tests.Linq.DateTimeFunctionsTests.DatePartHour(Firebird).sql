﻿BeforeExecute
-- Firebird

SELECT
	Cast(Floor(Extract(hour from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

