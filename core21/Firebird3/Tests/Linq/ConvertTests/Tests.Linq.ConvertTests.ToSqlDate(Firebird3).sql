﻿BeforeExecute
-- Firebird3 Firebird

SELECT
	Cast((Cast(Cast(Floor(Extract(year from "t"."DateTimeValue")) as int) as VarChar(100) CHARACTER SET UNICODE_FSS) || '-01-01') as Date)
FROM
	"LinqDataTypes" "t"

