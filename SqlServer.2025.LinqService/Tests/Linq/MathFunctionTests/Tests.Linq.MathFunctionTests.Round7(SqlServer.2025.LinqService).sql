﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	IIF([t].[MoneyValue] - FLOOR([t].[MoneyValue]) = 0.5 AND (FLOOR([t].[MoneyValue]) % 2) = 0, FLOOR([t].[MoneyValue]), ROUND([t].[MoneyValue], 0)) <> 0

