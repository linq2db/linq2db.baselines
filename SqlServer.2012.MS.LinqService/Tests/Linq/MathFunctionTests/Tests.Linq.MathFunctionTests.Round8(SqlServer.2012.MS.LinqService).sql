﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	CAST([t].[MoneyValue] AS Float)
FROM
	[LinqDataTypes] [t]
WHERE
	IIF(CAST([t].[MoneyValue] AS Float) - FLOOR(CAST([t].[MoneyValue] AS Float)) = 0.5 AND (Convert(Int, FLOOR(CAST([t].[MoneyValue] AS Float))) % 2) = 0, FLOOR(CAST([t].[MoneyValue] AS Float)), ROUND(CAST([t].[MoneyValue] AS Float), 0)) <> 0

