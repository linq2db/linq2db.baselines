﻿BeforeExecute
-- SqlCe

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	CAST([p].[MoneyValue] AS BigInt) > 0

