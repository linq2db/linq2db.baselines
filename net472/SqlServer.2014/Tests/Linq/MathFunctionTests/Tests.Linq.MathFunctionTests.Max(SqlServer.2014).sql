﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[t].[c1]
FROM
	(
		SELECT
			IIF([p].[MoneyValue] > 5.1, [p].[MoneyValue], 5.1) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

