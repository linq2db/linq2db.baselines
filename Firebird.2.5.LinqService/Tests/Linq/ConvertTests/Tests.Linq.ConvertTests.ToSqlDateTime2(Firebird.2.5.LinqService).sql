﻿BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	CAST(Extract(year from "t"."DateTimeValue") || '-01-01 00:20:00' AS Timestamp)
FROM
	"LinqDataTypes" "t"

