﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Mod(Cast(Floor(Extract(second from "t"."DateTimeValue")) as int), 7)
FROM
	"LinqDataTypes" "t"

