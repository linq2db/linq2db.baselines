﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Extract(minute from DateAdd(Minute, -8, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

