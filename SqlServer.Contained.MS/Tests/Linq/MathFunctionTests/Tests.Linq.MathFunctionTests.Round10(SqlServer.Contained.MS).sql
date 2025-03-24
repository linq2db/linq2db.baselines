﻿BeforeExecute
--  SqlServer.Contained.MS SqlServer.2019

SELECT
	[t].[MoneyValue]
FROM
	(
		SELECT
			IIF([p].[MoneyValue] * 2 = ROUND([p].[MoneyValue] * 2, 1) AND [p].[MoneyValue] <> ROUND([p].[MoneyValue], 1), ROUND([p].[MoneyValue] / 2, 1) * 2, ROUND([p].[MoneyValue], 1)) as [c1],
			[p].[MoneyValue]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0 AND [t].[c1] <> 7

