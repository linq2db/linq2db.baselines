﻿BeforeExecute
-- SqlServer.2008

SELECT
	[t].[MoneyValue]
FROM
	(
		SELECT
			ROUND([p].[MoneyValue], 1) as [c1],
			[p].[MoneyValue]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0 AND [t].[c1] <> 7

