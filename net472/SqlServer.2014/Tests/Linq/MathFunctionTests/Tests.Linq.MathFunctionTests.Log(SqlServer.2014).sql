﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Floor(Log(Convert(Float, [p].[MoneyValue]))) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] <> 0.10000000000000001 OR [t].[c1] IS NULL)

