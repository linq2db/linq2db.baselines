﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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
	[t].[c1] <> 0

