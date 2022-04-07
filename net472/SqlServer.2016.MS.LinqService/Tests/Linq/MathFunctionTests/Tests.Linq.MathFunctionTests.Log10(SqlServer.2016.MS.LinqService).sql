﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Floor(Log10(Convert(Float, [p].[MoneyValue]))) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] <> 0.10000000000000001 OR [t].[c1] IS NULL)

