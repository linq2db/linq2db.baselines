﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Floor([t].[Value_1])
FROM
	(
		SELECT
			Degrees(CAST([p].[MoneyValue] AS Float)) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.10000000000000001

