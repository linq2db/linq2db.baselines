﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Floor(Log(Convert(Float, [p].[MoneyValue])) / 0.69314718055994529) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] <> 0.10000000000000001 OR [t].[c1] IS NULL)

