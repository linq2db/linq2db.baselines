﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Floor(Sin(Convert(Float, [p].[MoneyValue]) / 15) * 15) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0.10000000000000001

