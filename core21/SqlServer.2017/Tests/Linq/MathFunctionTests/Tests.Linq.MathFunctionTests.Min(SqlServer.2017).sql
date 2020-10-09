﻿BeforeExecute
-- SqlServer.2017

SELECT 
	[t].[c1]
FROM
	( 
		SELECT 
			IIF([p].[MoneyValue] < 5, [p].[MoneyValue], 5) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] IS NULL OR [t].[c1] <> 0)

