﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Extract(year from "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"
WHERE
	Extract(month from CAST(LPad(CAST(Extract(year from "t"."DateTimeValue") AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-10-01' AS TimeStamp)) = 10

