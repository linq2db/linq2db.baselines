﻿BeforeExecute
-- SqlServer.2019

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Floor(Log(Convert(Float, [t].[MoneyValue])) / 0.69314718055994529) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	([t_1].[c1] <> 0.10000000000000001 OR [t_1].[c1] IS NULL)

