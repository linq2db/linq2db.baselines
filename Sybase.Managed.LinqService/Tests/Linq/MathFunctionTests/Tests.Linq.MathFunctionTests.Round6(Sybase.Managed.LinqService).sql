﻿BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	ROUND(CAST([t].[MoneyValue] AS Float), 0) <> 0

