﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[p].[c1]
FROM
	(
		SELECT
			Convert(Bit, [t].[MoneyValue] - 4.5) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	([p].[c1] = 0 OR [p].[c1] IS NULL)

