﻿BeforeExecute
-- Firebird3 Firebird

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Cast(('2010-' || Cast("p".ID as VarChar(4000) CHARACTER SET UNICODE_FSS) || '-1 20:35:44') as TimeStamp) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Cast(Floor(Extract(year from "t"."c1")) as int) = 2010

