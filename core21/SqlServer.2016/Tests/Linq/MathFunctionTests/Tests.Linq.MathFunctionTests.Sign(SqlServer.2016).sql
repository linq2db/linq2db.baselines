﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	[t].[c1]
FROM
	( 
		SELECT 
			Sign([p].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

