﻿BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	CAST(LPad(CAST(Extract(year from "p"."DateTimeValue") AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-10-01' AS TimeStamp)
FROM
	"LinqDataTypes" "p"

