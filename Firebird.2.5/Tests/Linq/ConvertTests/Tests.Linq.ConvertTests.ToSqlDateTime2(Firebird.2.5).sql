﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Cast((Cast(Cast(Floor(Extract(year from "t"."DateTimeValue")) as int) as VarChar(11) CHARACTER SET UNICODE_FSS) || '-01-01 00:20:00') as TimeStamp)
FROM
	"LinqDataTypes" "t"

