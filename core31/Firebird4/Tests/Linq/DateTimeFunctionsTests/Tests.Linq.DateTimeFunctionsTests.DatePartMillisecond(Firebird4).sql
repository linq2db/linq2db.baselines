﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	Cast(Floor(Extract(millisecond from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

