﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t].[c1]
FROM
	(
		SELECT
			IIF([p].[MoneyValue] <= 5, [p].[MoneyValue], 5) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

