﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CAST(Floor(Extract(second from DateAdd(Second, 41, "t"."DateTimeValue"))) AS Int)
FROM
	"LinqDataTypes" "t"

