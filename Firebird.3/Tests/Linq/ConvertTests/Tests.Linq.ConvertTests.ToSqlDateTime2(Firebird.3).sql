﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CAST(CAST(Extract(year from "t"."DateTimeValue") AS VarChar(6) CHARACTER SET UNICODE_FSS) || '-01-01 00:20:00' AS Timestamp)
FROM
	"LinqDataTypes" "t"

