﻿BeforeExecute
-- Firebird3 Firebird

SELECT
	CAST(Floor(Extract(second from DateAdd(Second, -35, "t"."DateTimeValue"))) AS Int)
FROM
	"LinqDataTypes" "t"

