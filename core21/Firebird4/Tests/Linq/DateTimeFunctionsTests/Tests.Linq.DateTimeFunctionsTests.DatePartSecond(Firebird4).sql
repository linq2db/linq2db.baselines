﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	Cast(Floor(Extract(second from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

