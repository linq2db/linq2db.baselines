﻿BeforeExecute
-- Firebird3 Firebird

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Cast((Cast(Cast(Floor(Extract(year from "p"."DateTimeValue")) as int) as VarChar(4000) CHARACTER SET UNICODE_FSS) || '-10-1 20:35:44') as TimeStamp) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Cast(Floor(Extract(month from "t"."c1")) as int) = 10

