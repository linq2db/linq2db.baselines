﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Floor(Degrees([p].[MoneyValue])) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.1

