﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(Floor([p].[MoneyValue]) AS BigInt) > 0

