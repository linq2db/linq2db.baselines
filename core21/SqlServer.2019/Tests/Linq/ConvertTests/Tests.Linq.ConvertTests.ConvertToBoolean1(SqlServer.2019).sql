﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[p].[c1]
FROM
	(
		SELECT
			Convert(Bit, [t].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	([p].[c1] = 1 AND [p].[c1] IS NOT NULL)

