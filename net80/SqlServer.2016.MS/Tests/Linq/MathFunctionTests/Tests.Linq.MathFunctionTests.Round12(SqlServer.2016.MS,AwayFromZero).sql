﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Round([p].[MoneyValue], 1) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0 AND [t].[c1] <> 7

