﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	CAST([t].[MoneyValue] AS Float)
FROM
	[LinqDataTypes] [t]
WHERE
	IIF(CAST([t].[MoneyValue] AS Float) - FLOOR(CAST([t].[MoneyValue] AS Float)) = 0.5 AND (Convert(Int, FLOOR(CAST([t].[MoneyValue] AS Float))) % 2) = 0, FLOOR(CAST([t].[MoneyValue] AS Float)), ROUND(CAST([t].[MoneyValue] AS Float), 0)) <> 0

